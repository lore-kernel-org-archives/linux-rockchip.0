Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A51E107761F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 21:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6YuDpfPCuqsY6fwp88ZMeh8ijbkV1uhMkWPO5QfLrs=; b=fXqddzjAgi5yqW
	Q0AAOWv5AoErc7m0qkNXO3M3+9a0doDUdLGGywxnWGWr9KZFCGO0gMqAZTB+fAo6LaEEz67B//L+j
	2TlwSAv165Ud6abSf9mOfBIWyISwoDANd1h4t86uepxRHzCQ3WZTkf0/BvOGIP63wmHzh/Et2+Jtw
	Ecyd+/dEp5E90VoTFzduwIGEkYd7lmURqSfy7h3aUM0b6p6XDloPTCMbsdZE3cbD9L3+5YBvdyD7i
	1kw6Z9zx+IhMvXMubI6cTpLwVUGTCHos9d6RogQG2KxJBxDGvcFPtFXB/c++NVQEua3uGBFUfMfwc
	7QXOAmnvGcOCdRZ4e5Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2yor-00000009Oeb-3mlP;
	Wed, 18 Mar 2026 21:52:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2yoq-00000009OeV-0pEF
	for linux-rockchip@bombadil.infradead.org;
	Wed, 18 Mar 2026 21:52:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=hWDGumjNeG1y9SM0/jlZ31MlASAIa2Shc7waG7yET5E=; b=UQX/SSzL6uHf/xxnTW0w67mbqF
	i8HLKDVhFAzmcHR0MzZdu22LsBCHSJrk82YbtJItXpaYEFlHaH3ZweiskEyPxf4U3cDjjcn+y16kw
	uUZMcKxE+lbzAeFJOZTf6Hb0bcwcdsoa8rVeDX3CwMs5qt34fKK74a2zJr6WQEGHgvq4zALqUbA75
	njWpWaO2SQgCjA79FgDDjOk3RtlkUSRXJ8OhPs14yC/oIABEKiG6ULcqZTrD/67lWDn6tiYsJk1J/
	RCMMqZavkJAvfwTB3Kz4wL5n02mtc1AyxLS23bwewIUC1/uR5ntGSFhRDd0u5PaZxuoEDrJ5NfqvK
	KqJ14b/g==;
Received: from smtpout-04.galae.net ([185.171.202.116])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2yom-0000000544h-1LUF
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Mar 2026 21:52:46 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 9D30AC5506F;
	Wed, 18 Mar 2026 21:53:00 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id DA5346004F;
	Wed, 18 Mar 2026 21:52:35 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id F197010450599;
	Wed, 18 Mar 2026 22:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773870754; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=hWDGumjNeG1y9SM0/jlZ31MlASAIa2Shc7waG7yET5E=;
	b=Qp/7XfNqeiRlS2+FBFlAtJhAPg1H9lzngRLAmk7YMdnDETz5Ii0gzMXoDaPoiIm5JqXBz+
	SP+F1t8MBRVtuKOMECJJDob2CZbvKJN7ciyNAn0BRWjEQp9qLjTe/eUPrtWlPQoxpjaUPa
	/3FJgnvCwUSMiKo+z05es+JDYa+Up2B6Iqn0h2m4VuuGSeAAenVZtRFSMp3VFuB4RBVI7n
	EGXNktIavNFYIru59l1A7GHcROoZf+jC5AarvH8/56cbv7Kf46QGs11U3A2aQxzvSlQmbG
	W1SJ+yOmhDoyHj0e9x5uVtn2kWEXvedAjYDoEmUgA+r2YjRbKtgcQ239VNKQZA==
Mime-Version: 1.0
Date: Wed, 18 Mar 2026 22:52:26 +0100
Message-Id: <DH68P6XTTTTP.10WUEJQMP1OC9@bootlin.com>
Subject: Re: [PATCH v2] drm/bridge: dw-hdmi-qp: fix multi-channel audio
 output
Cc: "Andrzej Hajda" <andrzej.hajda@intel.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Dmitry
 Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Detlev Casanova"
 <detlev.casanova@collabora.com>, "Douglas Anderson"
 <dianders@chromium.org>, "Andy Yan" <andy.yan@rock-chips.com>, "Sugar
 Zhang" <sugar.zhang@rock-chips.com>, "Heiko Stuebner" <heiko@sntech.de>,
 <dri-devel@lists.freedesktop.org>, <linux-rockchip@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>, "Christian
 Hewitt" <christianshewitt@gmail.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260228112822.4056354-1-christianshewitt@gmail.com>
 <DH56X74P9GC9.1O123S92J60RG@bootlin.com>
 <00EE3E21-F614-429B-ACB6-19AF64CF74B3@gmail.com>
 <DH58MAETGDMM.2QS6VJDQ7UXIV@bootlin.com>
 <0895dfa0-9527-41b1-b991-a2bd6e0c549b@collabora.com>
In-Reply-To: <0895dfa0-9527-41b1-b991-a2bd6e0c549b@collabora.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_215244_447220_D37B3AC1 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
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

Hello Cristian,

On Wed Mar 18, 2026 at 7:12 PM CET, Cristian Ciocaltea wrote:
>> So now this patch is on drm-misc-fixes, but drm-misc-fixes and
>> drm-misc-next are now conflicting because of other changes by Cristian
>> Ciocaltea applied in the meanwhile to drm-misc-next, and particularly
>> commit 3ea699b56d31 ("drm/bridge: dw-hdmi-qp: Rework Audio InfoFrame
>> handler").
>>
>> Cristian, Christian (heh), Jonas, could you please check whether the code
>> on drm-misc-next has or not the bug that is fixed here? And if it still
>> has, send a fix based on current drm-misc-next?
>
> The conflicting commit in drm-misc-next (i.e. 3ea699b56d31) implicitly resolves
> this audio related issue as well, hence there is no need for any further action.

Good to know! Thanks for checking.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
