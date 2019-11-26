package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompatBase.Action;
import android.support.v4.app.NotificationCompatBase.UnreadConversation;
import android.support.v4.app.NotificationCompatBase.UnreadConversation.Factory;
import android.support.v4.app.RemoteInputCompatBase.RemoteInput;

class NotificationCompatApi21 {
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    private static final String KEY_AUTHOR = "author";
    private static final String KEY_MESSAGES = "messages";
    private static final String KEY_ON_READ = "on_read";
    private static final String KEY_ON_REPLY = "on_reply";
    private static final String KEY_PARTICIPANTS = "participants";
    private static final String KEY_REMOTE_INPUT = "remote_input";
    private static final String KEY_TEXT = "text";
    private static final String KEY_TIMESTAMP = "timestamp";

    public static class Builder implements NotificationBuilderWithActions, NotificationBuilderWithBuilderAccessor {
        private android.app.Notification.Builder f1b;

        public Builder(@dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) android.content.Context r17, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) android.app.Notification r18, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) java.lang.CharSequence r19, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) java.lang.CharSequence r20, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) java.lang.CharSequence r21, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) android.widget.RemoteViews r22, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) int r23, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) android.app.PendingIntent r24, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) android.app.PendingIntent r25, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) android.graphics.Bitmap r26, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) int r27, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) int r28, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) boolean r29, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) boolean r30, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) boolean r31, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) int r32, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) java.lang.CharSequence r33, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) boolean r34, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) java.lang.String r35, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) java.util.ArrayList<java.lang.String> r36, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) android.os.Bundle r37, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) int r38, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) int r39, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) android.app.Notification r40, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) java.lang.String r41, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) boolean r42, @dalvik.annotation.Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/lang/String;", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "II", "Landroid/app/Notification;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) java.lang.String r43) throws  {
            /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:20:0x0118 in {2, 5, 8, 11, 13, 15, 17, 19, 25, 30} preds:[]
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.computeDominators(BlockProcessor.java:129)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:48)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:38)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:306)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:199)
*/
            /*
            r16 = this;
            r0 = r16;
            r0.<init>();
            r3 = new android.app.Notification$Builder;
            r0 = r17;
            r3.<init>(r0);
            r0 = r18;
            r4 = r0.when;
            r3 = r3.setWhen(r4);
            r0 = r30;
            r3 = r3.setShowWhen(r0);
            r0 = r18;
            r6 = r0.icon;
            r0 = r18;
            r7 = r0.iconLevel;
            r3 = r3.setSmallIcon(r6, r7);
            r0 = r18;
            r8 = r0.contentView;
            r3 = r3.setContent(r8);
            r0 = r18;
            r9 = r0.tickerText;
            r0 = r22;
            r3 = r3.setTicker(r9, r0);
            r0 = r18;
            r10 = r0.sound;
            r0 = r18;
            r6 = r0.audioStreamType;
            r3 = r3.setSound(r10, r6);
            r0 = r18;
            r11 = r0.vibrate;
            r3 = r3.setVibrate(r11);
            r0 = r18;
            r7 = r0.ledARGB;
            r0 = r18;
            r12 = r0.ledOnMS;
            r0 = r18;
            r6 = r0.ledOffMS;
            r3 = r3.setLights(r7, r12, r6);
            r0 = r18;
            r6 = r0.flags;
            r6 = r6 & 2;
            if (r6 == 0) goto L_0x015e;
        L_0x0064:
            r30 = 1;
        L_0x0066:
            r0 = r30;
            r3 = r3.setOngoing(r0);
            r0 = r18;
            r6 = r0.flags;
            r6 = r6 & 8;
            if (r6 == 0) goto L_0x0161;
        L_0x0074:
            r30 = 1;
        L_0x0076:
            r0 = r30;
            r3 = r3.setOnlyAlertOnce(r0);
            r0 = r18;
            r6 = r0.flags;
            r6 = r6 & 16;
            if (r6 == 0) goto L_0x0164;
        L_0x0084:
            r30 = 1;
        L_0x0086:
            r0 = r30;
            r3 = r3.setAutoCancel(r0);
            r0 = r18;
            r6 = r0.defaults;
            r3 = r3.setDefaults(r6);
            r0 = r19;
            r3 = r3.setContentTitle(r0);
            r0 = r20;
            r3 = r3.setContentText(r0);
            r0 = r33;
            r3 = r3.setSubText(r0);
            r0 = r21;
            r3 = r3.setContentInfo(r0);
            r0 = r24;
            r3 = r3.setContentIntent(r0);
            r0 = r18;
            r0 = r0.deleteIntent;
            r24 = r0;
            r3 = r3.setDeleteIntent(r0);
            r0 = r18;
            r6 = r0.flags;
            r6 = r6 & 128;
            if (r6 == 0) goto L_0x0167;
        L_0x00c4:
            r30 = 1;
        L_0x00c6:
            r0 = r25;
            r1 = r30;
            r3 = r3.setFullScreenIntent(r0, r1);
            r0 = r26;
            r3 = r3.setLargeIcon(r0);
            r0 = r23;
            r3 = r3.setNumber(r0);
            goto L_0x00de;
        L_0x00db:
            goto L_0x0066;
        L_0x00de:
            r0 = r31;
            r3 = r3.setUsesChronometer(r0);
            goto L_0x00e8;
        L_0x00e5:
            goto L_0x0076;
        L_0x00e8:
            r0 = r32;
            r3 = r3.setPriority(r0);
            goto L_0x00f2;
        L_0x00ef:
            goto L_0x0086;
        L_0x00f2:
            r0 = r27;
            r1 = r28;
            r2 = r29;
            r3 = r3.setProgress(r0, r1, r2);
            r0 = r34;
            r3 = r3.setLocalOnly(r0);
            r0 = r37;
            r3 = r3.setExtras(r0);
            r0 = r41;
            r3 = r3.setGroup(r0);
            r0 = r42;
            r3 = r3.setGroupSummary(r0);
            goto L_0x011c;
        L_0x0115:
            goto L_0x00c6;
            goto L_0x011c;
        L_0x0119:
            goto L_0x00db;
        L_0x011c:
            r0 = r43;
            r3 = r3.setSortKey(r0);
            r0 = r35;
            r3 = r3.setCategory(r0);
            r0 = r38;
            r3 = r3.setColor(r0);
            r0 = r39;
            r3 = r3.setVisibility(r0);
            r0 = r40;
            r3 = r3.setPublicVersion(r0);
            r0 = r16;
            r0.f1b = r3;
            r0 = r36;
            r13 = r0.iterator();
        L_0x0144:
            r29 = r13.hasNext();
            if (r29 == 0) goto L_0x016a;
        L_0x014a:
            r14 = r13.next();
            r15 = r14;
            r15 = (java.lang.String) r15;
            r35 = r15;
            r0 = r16;
            r3 = r0.f1b;
            r0 = r35;
            r3.addPerson(r0);
            goto L_0x0144;
        L_0x015e:
            r30 = 0;
            goto L_0x0119;
        L_0x0161:
            r30 = 0;
            goto L_0x00e5;
        L_0x0164:
            r30 = 0;
            goto L_0x00ef;
        L_0x0167:
            r30 = 0;
            goto L_0x0115;
        L_0x016a:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.NotificationCompatApi21.Builder.<init>(android.content.Context, android.app.Notification, java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, android.widget.RemoteViews, int, android.app.PendingIntent, android.app.PendingIntent, android.graphics.Bitmap, int, int, boolean, boolean, boolean, int, java.lang.CharSequence, boolean, java.lang.String, java.util.ArrayList, android.os.Bundle, int, int, android.app.Notification, java.lang.String, boolean, java.lang.String):void");
        }

        public void addAction(Action $r1) throws  {
            NotificationCompatApi20.addAction(this.f1b, $r1);
        }

        public android.app.Notification.Builder getBuilder() throws  {
            return this.f1b;
        }

        public Notification build() throws  {
            return this.f1b.build();
        }
    }

    NotificationCompatApi21() throws  {
    }

    public static String getCategory(Notification $r0) throws  {
        return $r0.category;
    }

    static Bundle getBundleForUnreadConversation(UnreadConversation $r0) throws  {
        if ($r0 == null) {
            return null;
        }
        Bundle $r3 = new Bundle();
        String $r4 = null;
        if ($r0.getParticipants() != null && $r0.getParticipants().length > 1) {
            $r4 = $r0.getParticipants()[0];
        }
        Parcelable[] $r2 = new Parcelable[$r0.getMessages().length];
        for (int $i0 = 0; $i0 < $r2.length; $i0++) {
            Bundle $r1 = new Bundle();
            $r1.putString(KEY_TEXT, $r0.getMessages()[$i0]);
            $r1.putString(KEY_AUTHOR, $r4);
            $r2[$i0] = $r1;
        }
        $r3.putParcelableArray(KEY_MESSAGES, $r2);
        RemoteInput $r7 = $r0.getRemoteInput();
        if ($r7 != null) {
            $r3.putParcelable(KEY_REMOTE_INPUT, fromCompatRemoteInput($r7));
        }
        $r3.putParcelable(KEY_ON_REPLY, $r0.getReplyPendingIntent());
        $r3.putParcelable(KEY_ON_READ, $r0.getReadPendingIntent());
        $r3.putStringArray(KEY_PARTICIPANTS, $r0.getParticipants());
        $r3.putLong(KEY_TIMESTAMP, $r0.getLatestTimestamp());
        return $r3;
    }

    static UnreadConversation getUnreadConversationFromBundle(Bundle $r0, Factory $r1, RemoteInput.Factory $r2) throws  {
        RemoteInput $r4 = null;
        if ($r0 == null) {
            return null;
        }
        Parcelable[] $r5 = $r0.getParcelableArray(KEY_MESSAGES);
        String[] $r3 = null;
        if ($r5 != null) {
            $r3 = new String[$r5.length];
            boolean $z0 = true;
            for (int $i0 = 0; $i0 < $r3.length; $i0++) {
                if (!($r5[$i0] instanceof Bundle)) {
                    $z0 = false;
                    break;
                }
                $r3[$i0] = ((Bundle) $r5[$i0]).getString(KEY_TEXT);
                if ($r3[$i0] == null) {
                    $z0 = false;
                    break;
                }
            }
            if (!$z0) {
                return null;
            }
        }
        PendingIntent pendingIntent = (PendingIntent) $r0.getParcelable(KEY_ON_READ);
        PendingIntent $r8 = (PendingIntent) $r0.getParcelable(KEY_ON_REPLY);
        android.app.RemoteInput $r9 = (android.app.RemoteInput) $r0.getParcelable(KEY_REMOTE_INPUT);
        String[] $r10 = $r0.getStringArray(KEY_PARTICIPANTS);
        if ($r10 == null) {
            return null;
        }
        if ($r10.length != 1) {
            return null;
        }
        if ($r9 != null) {
            $r4 = toCompatRemoteInput($r9, $r2);
        }
        return $r1.build($r3, $r4, $r8, pendingIntent, $r10, $r0.getLong(KEY_TIMESTAMP));
    }

    private static android.app.RemoteInput fromCompatRemoteInput(RemoteInput $r0) throws  {
        return new android.app.RemoteInput.Builder($r0.getResultKey()).setLabel($r0.getLabel()).setChoices($r0.getChoices()).setAllowFreeFormInput($r0.getAllowFreeFormInput()).addExtras($r0.getExtras()).build();
    }

    private static RemoteInput toCompatRemoteInput(android.app.RemoteInput $r0, RemoteInput.Factory $r1) throws  {
        return $r1.build($r0.getResultKey(), $r0.getLabel(), $r0.getChoices(), $r0.getAllowFreeFormInput(), $r0.getExtras());
    }
}
