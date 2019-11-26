package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.InboxStyle;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.RemoteViews;
import dalvik.annotation.Signature;
import java.util.ArrayList;
import java.util.Iterator;

class NotificationCompatJellybean
{
  private Notification.Builder b;

  public NotificationCompatJellybean(Context paramContext, Notification paramNotification, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, RemoteViews paramRemoteViews, int paramInt1, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, Bitmap paramBitmap, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, int paramInt4, CharSequence paramCharSequence4)
  {
    Notification.Builder localBuilder1 = new Notification.Builder(paramContext);
    long l = paramNotification.when;
    localBuilder1 = localBuilder1.setWhen(l);
    int m = paramNotification.icon;
    int i2 = paramNotification.iconLevel;
    localBuilder1 = localBuilder1.setSmallIcon(m, i2);
    Object localObject2 = paramNotification.contentView;
    localBuilder1 = localBuilder1.setContent((RemoteViews)localObject2);
    localObject2 = paramNotification.tickerText;
    localBuilder1 = localBuilder1.setTicker((CharSequence)localObject2, paramRemoteViews);
    localObject2 = paramNotification.sound;
    int i3 = paramNotification.audioStreamType;
    localBuilder1 = localBuilder1.setSound((Uri)localObject2, i3);
    localObject2 = paramNotification.vibrate;
    localBuilder1 = localBuilder1.setVibrate(localObject2);
    int n = paramNotification.ledARGB;
    int i4 = paramNotification.ledOnMS;
    int i5 = paramNotification.ledOffMS;
    Notification.Builder localBuilder3 = localBuilder1.setLights(n, i4, i5);
    int i = paramNotification.flags & 0x2;
    label195: label221: Object localObject3;
    if (i != 0)
    {
      i = 1;
      localBuilder3 = localBuilder3.setOngoing(i);
      i = paramNotification.flags & 0x8;
      if (i == 0)
        break label407;
      i = 1;
      localBuilder3 = localBuilder3.setOnlyAlertOnce(i);
      i = paramNotification.flags & 0x10;
      if (i == 0)
        break label413;
      i = 1;
      Notification.Builder localBuilder2 = localBuilder3.setAutoCancel(i);
      int i1 = paramNotification.defaults;
      localBuilder2 = localBuilder2.setDefaults(i1).setContentTitle(paramCharSequence1).setContentText(paramCharSequence2);
      CharSequence localCharSequence = paramCharSequence4;
      localBuilder2 = localBuilder2.setSubText(localCharSequence).setContentInfo(paramCharSequence3).setContentIntent(paramPendingIntent1);
      localObject3 = paramNotification.deleteIntent;
      localObject3 = localBuilder2.setDeleteIntent((PendingIntent)localObject3);
      j = paramNotification.flags & 0x80;
      if (j == 0)
        break label419;
    }
    label407: label413: label419: int k;
    for (int j = 1; ; k = 0)
    {
      PendingIntent localPendingIntent = paramPendingIntent2;
      Notification.Builder localBuilder4 = ((Notification.Builder)localObject3).setFullScreenIntent(localPendingIntent, j);
      Bitmap localBitmap = paramBitmap;
      Notification.Builder localBuilder5 = j.setLargeIcon(localBitmap).setNumber(paramInt1);
      boolean bool1 = paramBoolean2;
      Notification.Builder localBuilder6 = j.setUsesChronometer(bool1);
      int i6 = paramInt4;
      Notification.Builder localBuilder7 = j.setPriority(i6);
      int i7 = paramInt2;
      int i8 = paramInt3;
      boolean bool2 = paramBoolean1;
      Notification.Builder localBuilder8 = j.setProgress(i7, i8, bool2);
      this.b = j;
      return;
      Object localObject1 = null;
      break;
      localObject1 = null;
      break label195;
      localObject1 = null;
      break label221;
    }
  }

  public void addAction(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this.b.addAction(paramInt, paramCharSequence, paramPendingIntent);
  }

  public void addBigPictureStyle(CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, Bitmap paramBitmap)
  {
    Notification.Builder localBuilder = this.b;
    Notification.BigPictureStyle localBigPictureStyle = new Notification.BigPictureStyle(localBuilder).setBigContentTitle(paramCharSequence1).bigPicture(paramBitmap);
    if (paramBoolean)
      localBigPictureStyle.setSummaryText(paramCharSequence2);
  }

  public void addBigTextStyle(CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, CharSequence paramCharSequence3)
  {
    Notification.Builder localBuilder = this.b;
    Notification.BigTextStyle localBigTextStyle = new Notification.BigTextStyle(localBuilder).setBigContentTitle(paramCharSequence1).bigText(paramCharSequence3);
    if (paramBoolean)
      localBigTextStyle.setSummaryText(paramCharSequence2);
  }

  @Signature({"(", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/CharSequence;", "Ljava/util/ArrayList", "<", "Ljava/lang/CharSequence;", ">;)V"})
  public void addInboxStyle(CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, ArrayList paramArrayList)
  {
    Notification.Builder localBuilder = this.b;
    Notification.InboxStyle localInboxStyle = new Notification.InboxStyle(localBuilder).setBigContentTitle(paramCharSequence1);
    if (paramBoolean)
      localInboxStyle.setSummaryText(paramCharSequence2);
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      CharSequence localCharSequence = (CharSequence)localIterator.next();
      localInboxStyle.addLine(localCharSequence);
    }
  }

  public Notification build()
  {
    return this.b.build();
  }
}