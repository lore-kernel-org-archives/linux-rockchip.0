Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1496AC624DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2026 07:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yF4XqvCwsbm9ayQXFy4ey04LdBA7abl60I/IvavNh8=; b=Z5CH6Q5/X0zZqR
	365ujpPQtAwEawIVl3lhpPBh+VH+NnTRi9mL3mbjOerbeYIfQNHYH8VSnK2G+ZMGwMihMdqQtKiP3
	BOswxBdEQcNx1E3fNrREIheprTA/848H/ddk8n5eBpg5oAU4sH0QZu0gBPGxjVBqa5uKI7omozmPL
	bhN8bQNfnNUxkFDGoHIk6ibt5ZzrEtpV4VHSIA24uFBoQYN2AoYM1WcZQMAeLETm4+c2MeRR2ZRLr
	7YW4iY0rotI+eIUja0zzZuF2egTHMvJftPHpgQck2VuRL2vV30KJ2LRVgtkxw8e/z8WFZtzKQnvRm
	UBgho1VGojZatyHvZocQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2kPN-00000003l2g-1PBq;
	Sat, 05 Sep 2026 07:01:49 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2kPL-00000003l2C-2vr7
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Sep 2026 07:01:48 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843703c170so41913f8f.2
        for <linux-rockchip@lists.infradead.org>; Sat, 05 Sep 2026 00:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788591705; x=1789196505; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Kt57QRCH4DJKVKib3n3ZvQOCIYr91lFNtPdO+vKS0wg=;
        b=IDrpmeCHcyfcJZl4a1fKkOtZsQ+oHGLQRFaInaS+xDvoEIOPXFVVfvqzGIN6b7lhz4
         03lvDFJdoCfoseqN1sW6IWDQA+fX8fqzSD01LwEYWSO+Ze8C8qIbcy3Yor3bYE2DOGAs
         nPLtGAclwyfNECcC7ObAeqvZvvkzKyC/88XnTnRESPpXZ1EmxoNQxQ3Q9HeZmGPJO8Xy
         ZEcdbhH5FGPywXj5WjyuVd8PiPn4o2lts+ST7hX5+gn0mUKmIAr9n0F0DalkH+cDp7dW
         MpCXMJSiNbfRL8xR+x4tyLQwN8qmC9OAG5OIms24+gJBk+3WO3oFgUjkqvZ/1ntO0Nhw
         Wcpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788591705; x=1789196505;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Kt57QRCH4DJKVKib3n3ZvQOCIYr91lFNtPdO+vKS0wg=;
        b=rjE6YcZkX8Ul5CIxXqKzlB3m9FgTfXRejJ2qy0+Hnq7SD41ouE0C+LFj70VeBzKpUc
         i0AtUr1PBP4QlNvSRyeomV/WWSLTE/E3pMFcjkx0GyO04F5ilMBXVifLkaS9kiJ0BYKu
         CqQBLuZGnTA7DUelgee/VrZ54BTg1Nxkl74tf4+bqsoZCvdEXwDMrdhI5nPeVmWQpK34
         Xch/2pweKgd8RMacf3VYpiR6Tx6Stmg0ryCE5nXy7V8yN9zElA0yLC5EBQ3pNOZDeJR/
         rSmo+DdlDqhBYqoJ4xq7wR5vYOfDBPIbqnGsg892QK51PCf1hgHj2yxXPe1nwefNFicl
         lfqg==
X-Forwarded-Encrypted: i=1; AKwUvBw0ldFCyrhiwtB+1u2zmeUmmlhyXJ4GLFnxi8Gh4O46wAij2/AdFR1xRLrtx2aLY/JnNFwzPjXbyiaUuuD2zA==@lists.infradead.org
X-Gm-Message-State: AFuF++kEtMdWbTQxMaEbBGcH2ZclRa9oB6EToE3xd8SHnrY7LGDWFink
	zedMb0CgRp7jqFDkN7EG0nTZsENKnQPRU0kvs0ZBPXQREX0nWgK8Bhct
X-Gm-Gg: AYBFou1mynK9hKJBz85Z1NL44/1BScj04LSJrlF6dtI1nmTmMlff/kqpw+G3scIVnk8
	Ej5bOot2LpSdnAjmLYzlD8jsx8C3Izs8uIRcYXgzjC/TjoDizIYCU0+3jPKsMTxZkNvoj+7X1z8
	3tBm5iyTThHQvpvkEHJOcLuuGu5WDrCHdUhnIIWvvDFnSLprp4vVjM3UYnL1shktwVE4bvHaSln
	bi1nyaInRENpaYGfwMFxFXhqhmhMqW+C2as7GpTRm25BNNu6Rc6e9y4mjocMUyNCARBckw+lU9p
	LAo0vihybfqe/T8+pUZpOiBBasutJcINZwcMowIiNWCTeH7NGlDskUCg9jUX24LqvhM4M4IfOvi
	HSdh5bWMdo8NLrhOPhK+BBNGL86dBV6+pSToonFzMpTeVVMprjaNHPEfqw7R/4HfVvPl45s7ckT
	1LALJOVmJb09VuovGgihw04vwiEIxREBi6mqCjtA77TLfF0l4x2r+LriwzySmn26ciCHraJ2Uek
	VbxN/ET8EU+kLQACmetXB45WGaUuxh+9+UHY1F7EerXMNXmvliyH0Q7RPZeKup2b+4=
X-Received: by 2002:a5d:5e0a:0:b0:484:3200:b7a6 with SMTP id ffacd0b85a97d-485907ec2c3mr2477008f8f.4.1788591705286;
        Sat, 05 Sep 2026 00:01:45 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B950E00FBE43EAE5CDC0C29.dsl.pool.telekom.hu. [2001:4c4e:1b95:e00:fbe4:3eae:5cdc:c29])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4858ab73c2bsm10109185f8f.22.2026.09.05.00.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 00:01:44 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	tomeu@tomeuvizoso.net,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Sat,  5 Sep 2026 09:01:16 +0200
Message-ID: <20260905070121.37113-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260905051323.189794-1-gahing@gahingwoo.com>
References: <20260801131656.58450-1-royalnet026@gmail.com> <20260903091646.7183-1-royalnet026@gmail.com> <20260904110853.85150-1-gahing@gahingwoo.com> <20260904124659.25971-1-royalnet026@gmail.com> <20260905051323.189794-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_000147_756790_269B35FE 
X-CRM114-Status: GOOD (  15.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jiaxing,

> Drop it. A Signed-off-by says I passed the patch along, and on your
> copy I did not.

Done for v2: 1/7 keeps your Reviewed-by and loses the Signed-off-by.

>   Tested-by: Jiaxing Hu <gahing@gahingwoo.com> # RK3576, two cores

Thank you. That is the second SoC for the fix, and the one where the
same code runs with a different core count. One request: the tag sits in
this thread rather than under the patch, so b4 will not see it when
Tomeu applies, and it drops a trailer I repost on your behalf as a
from/email mismatch. If you have a minute, a one-line reply with it on
the patch itself lets it be collected with the rest:

  https://lore.kernel.org/dri-devel/20260904125936.26234-1-royalnet026@gmail.com/

If not, I will carry it on the next revision should one be needed.

> an accel device takes the next free minor, so after two rebinds the
> NPU sat at /dev/accel/accel2

I saw the same here - the minor walked from 1 to 10 over ten unbind/bind
rounds, and only a module reload put it back to 0 - and I think it is
more than the next free minor. rocket_device_init() allocates the
drm_device with devm_drm_dev_alloc() against the module's "rknn"
platform device, so the drm_dev_put() that frees it hangs off that
device's devres, and that device is only unregistered in
rocket_unregister(). rocket_device_fini() calls drm_dev_unregister() and
nothing else. The minor's xa_erase() is a drmm action on the drm_device,
so it runs at the last drm_dev_put(), which does not come until module
exit. Every unbind therefore leaves one unregistered drm_device behind,
still holding its minor, and the reload is what finally frees them.
That is the devm leak the automated review raised on the fix; the
climbing minor is the visible half of it. It wants its own patch, not a
line in this thread - I will look at it once the series has had a first
round.

Glad the unbind path paid its hour back on your side. A bug found in
unsent work is the cheap kind.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
