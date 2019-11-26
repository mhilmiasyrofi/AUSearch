package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompatBase.Action;
import android.support.v4.app.NotificationCompatBase.Action.Factory;
import android.widget.RemoteViews;
import dalvik.annotation.Signature;
import java.util.ArrayList;

class NotificationCompatApi20 {

    public static class Builder implements NotificationBuilderWithActions, NotificationBuilderWithBuilderAccessor {
        private android.app.Notification.Builder f0b;
        private Bundle mExtras;

        public Builder(@Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) Context $r1, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) Notification $r2, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) CharSequence $r3, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) CharSequence $r4, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) CharSequence $r5, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) RemoteViews $r6, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) int $i0, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) PendingIntent $r7, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) PendingIntent $r8, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) Bitmap $r9, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) int $i1, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) int $i2, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) boolean $z0, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) boolean $z1, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) boolean $z2, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) int $i3, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) CharSequence $r10, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) boolean $z3, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) ArrayList<String> $r11, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) Bundle $r12, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) String $r13, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) boolean $z4, @Signature({"(", "Landroid/content/Context;", "Landroid/app/Notification;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Ljava/lang/CharSequence;", "Landroid/widget/RemoteViews;", "I", "Landroid/app/PendingIntent;", "Landroid/app/PendingIntent;", "Landroid/graphics/Bitmap;", "IIZZZI", "Ljava/lang/CharSequence;", "Z", "Ljava/util/ArrayList", "<", "Ljava/lang/String;", ">;", "Landroid/os/Bundle;", "Ljava/lang/String;", "Z", "Ljava/lang/String;", ")V"}) String $r14) throws  {
            Builder builder = this;
            android.app.Notification.Builder $r15 = new android.app.Notification.Builder($r1).setWhen($r2.when).setShowWhen($z1).setSmallIcon($r2.icon, $r2.iconLevel).setContent($r2.contentView).setTicker($r2.tickerText, $r6).setSound($r2.sound, $r2.audioStreamType).setVibrate($r2.vibrate).setLights($r2.ledARGB, $r2.ledOnMS, $r2.ledOffMS).setOngoing(($r2.flags & 2) != 0).setOnlyAlertOnce(($r2.flags & 8) != 0).setAutoCancel(($r2.flags & 16) != 0).setDefaults($r2.defaults).setContentTitle($r3).setContentText($r4).setSubText($r10).setContentInfo($r5).setContentIntent($r7);
            PendingIntent $r72 = $r2.deleteIntent;
            this.f0b = $r15.setDeleteIntent($r72).setFullScreenIntent($r8, ($r2.flags & 128) != 0).setLargeIcon($r9).setNumber($i0).setUsesChronometer($z2).setPriority($i3).setProgress($i1, $i2, $z0).setLocalOnly($z3).setGroup($r13).setGroupSummary($z4).setSortKey($r14);
            this.mExtras = new Bundle();
            if ($r12 != null) {
                this.mExtras.putAll($r12);
            }
            if ($r11 != null && !$r11.isEmpty()) {
                this.mExtras.putStringArray(NotificationCompat.EXTRA_PEOPLE, (String[]) $r11.toArray(new String[$r11.size()]));
            }
        }

        public void addAction(Action $r1) throws  {
            NotificationCompatApi20.addAction(this.f0b, $r1);
        }

        public android.app.Notification.Builder getBuilder() throws  {
            return this.f0b;
        }

        public Notification build() throws  {
            this.f0b.setExtras(this.mExtras);
            return this.f0b.build();
        }
    }

    NotificationCompatApi20() throws  {
    }

    public static void addAction(android.app.Notification.Builder $r0, Action $r1) throws  {
        android.app.Notification.Action.Builder $r2 = new android.app.Notification.Action.Builder($r1.getIcon(), $r1.getTitle(), $r1.getActionIntent());
        if ($r1.getRemoteInputs() != null) {
            for (RemoteInput $r3 : RemoteInputCompatApi20.fromCompat($r1.getRemoteInputs())) {
                $r2.addRemoteInput($r3);
            }
        }
        if ($r1.getExtras() != null) {
            $r2.addExtras($r1.getExtras());
        }
        $r0.addAction($r2.build());
    }

    public static Action getAction(Notification $r0, int $i0, Factory $r1, RemoteInputCompatBase.RemoteInput.Factory $r2) throws  {
        return getActionCompatFromAction($r0.actions[$i0], $r1, $r2);
    }

    private static Action getActionCompatFromAction(Notification.Action $r0, Factory $r1, RemoteInputCompatBase.RemoteInput.Factory $r2) throws  {
        RemoteInputCompatBase.RemoteInput[] $r6 = RemoteInputCompatApi20.toCompat($r0.getRemoteInputs(), $r2);
        return $r1.build($r0.icon, $r0.title, $r0.actionIntent, $r0.getExtras(), $r6);
    }

    private static Notification.Action getActionFromActionCompat(Action $r0) throws  {
        android.app.Notification.Action.Builder $r2 = new android.app.Notification.Action.Builder($r0.getIcon(), $r0.getTitle(), $r0.getActionIntent()).addExtras($r0.getExtras());
        RemoteInputCompatBase.RemoteInput[] $r6 = $r0.getRemoteInputs();
        if ($r6 != null) {
            for (RemoteInput $r1 : RemoteInputCompatApi20.fromCompat($r6)) {
                $r2.addRemoteInput($r1);
            }
        }
        return $r2.build();
    }

    public static Action[] getActionsFromParcelableArrayList(@Signature({"(", "Ljava/util/ArrayList", "<", "Landroid/os/Parcelable;", ">;", "Landroid/support/v4/app/NotificationCompatBase$Action$Factory;", "Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;", ")[", "Landroid/support/v4/app/NotificationCompatBase$Action;"}) ArrayList<Parcelable> $r0, @Signature({"(", "Ljava/util/ArrayList", "<", "Landroid/os/Parcelable;", ">;", "Landroid/support/v4/app/NotificationCompatBase$Action$Factory;", "Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;", ")[", "Landroid/support/v4/app/NotificationCompatBase$Action;"}) Factory $r1, @Signature({"(", "Ljava/util/ArrayList", "<", "Landroid/os/Parcelable;", ">;", "Landroid/support/v4/app/NotificationCompatBase$Action$Factory;", "Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;", ")[", "Landroid/support/v4/app/NotificationCompatBase$Action;"}) RemoteInputCompatBase.RemoteInput.Factory $r2) throws  {
        if ($r0 == null) {
            return null;
        }
        Action[] $r3 = $r1.newArray($r0.size());
        for (int $i0 = 0; $i0 < $r3.length; $i0++) {
            $r3[$i0] = getActionCompatFromAction((Notification.Action) $r0.get($i0), $r1, $r2);
        }
        return $r3;
    }

    public static ArrayList<Parcelable> getParcelableArrayListForActions(@Signature({"([", "Landroid/support/v4/app/NotificationCompatBase$Action;", ")", "Ljava/util/ArrayList", "<", "Landroid/os/Parcelable;", ">;"}) Action[] $r0) throws  {
        if ($r0 == null) {
            return null;
        }
        ArrayList $r3 = new ArrayList($r0.length);
        for (Action $r1 : $r0) {
            $r3.add(getActionFromActionCompat($r1));
        }
        return $r3;
    }

    public static boolean getLocalOnly(Notification $r0) throws  {
        return ($r0.flags & 256) != 0;
    }

    public static String getGroup(Notification $r0) throws  {
        return $r0.getGroup();
    }

    public static boolean isGroupSummary(Notification $r0) throws  {
        return ($r0.flags & 512) != 0;
    }

    public static String getSortKey(Notification $r0) throws  {
        return $r0.getSortKey();
    }
}
