Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B011FCF6C1F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 09:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42z6RCs/d2hVf5w8HQJ/v3XesqpuJSXrx6xA9b08He4=; b=KIAAE1S+JIfYbM
	UQslkt0P0KsNRApkQ4/qcd8zxoHyxY9brqCW8dltt+r1K/PXp7Y+BXigg57Fqbf+KfQq0mzSuf3if
	AnkdcaRsRmFgdID/O3rDTLmZv86vzpR0UbXKXb5fEAu5FTAcsJ/FzSrM1tntA2xdfXDDMXPv4VYZX
	CCM5J0CxUIdZwxDzR7QhaUD9rQKUCi5TkOGEOIntk9TOq9IO8MqW4V3IOAC5ZH7R1+ePjW662UgCz
	kkzyLSyKFcdDUa1PoyIaX1i5dZCFW7zcSO3OHI24hTCk1gvEDhgIrw1P+HIo1NyLMvj6tLKAMTmi6
	4IMXjl1CeCOQwBkEhs0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQDn-0000000EbQo-2JIW;
	Wed, 07 Jan 2026 09:52:55 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQDj-0000000EbPT-41Pn
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 09:52:53 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-2b053ec7d90so1116114eec.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 01:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767779570; x=1768384370; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rvvOv0vv9H8q++Ltdf0WVIDOuGmNQfGsyInkVBB65VM=;
        b=ByGGAnsWnuwXvW6RRVq3ULgNXs2covScYGxDjLpRXp+RhbIRoTWp5r1RmCt2r60A4q
         2Dk8QpymF13AmZ4UWOcq8j9zJk/zw81PAjbWJAPCNNeXz9f0ZgtSQJFuTB7fOirTo/lz
         nVyHI4tRNM2Cwb4AlVN8pNzPyismhcTlKKqV8vCW+8ByJV3zOL6Wd36gwVCikq1BBYF6
         JI8RNwrHGYXuY7efU3FdlanMrQitkjDdwMIYTUjQxz8Irquuk8SwSAdl42jwbpcdZNYY
         Fpb69HWKp0iV5xwBAqB0JWxD34TarHpaXttF+MgVH1PxvaNanR7LdSnB0xbTc+1Kk9wr
         XWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767779570; x=1768384370;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rvvOv0vv9H8q++Ltdf0WVIDOuGmNQfGsyInkVBB65VM=;
        b=X0/dC1mFdrKKbdtPWI0zjlEVk5cvo3dVJjzUDfEfy/bhLuxhGxjIBKoIiDlnWAYGRR
         Z+Vgg/yn67Nfmb/rXf9W7wYdTfmV91QSiOy906Kg2vxxjtxvpj3mcOpkRHb5+hGC1pwi
         nj5k1rdpQwWICUeinrIu43kvqQm+CVXrSGzbWG7GS/NSV0ztxuHM4/PdFAzLe7KuqJCy
         Sv9LcpLa6J700QVvCeT2CFgOCk9ORGOdXdCeX6N5pebE33jTRSEfqM+/ZpK2wG8G3DD/
         Iw7tDZiSDiW83CK/cSkeeMDA14gyqfGWHkKot8GJKngZEKjs2E9MT7BpPEvQ+Q0W0Blt
         YGvA==
X-Forwarded-Encrypted: i=1; AJvYcCVPWYwGWDp1mwBocYmYQJ1W1fizN9teihNmBA0JME6d3DnIX8sxlxLd8CX2nECJr2sx/wBSRStc3b3tRjW4PQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzG5OFxzXxNzqdff4IxsEaQcgLzHdSfwXg7y4ebBfr45ag+AzBM
	KQBQ4Kde+8I1He3x9IahMRVHBCUJZZsrLj+gqaE1AKWIdMyj6pA+wUXXQzmww6+YXV9gEgjpzaL
	XM0+5xEx44XuHWFTNHCtRv8W0Ye7tlUY=
X-Gm-Gg: AY/fxX5NNzzhxtAtgpIchdVNLJo7Ql6f/O1PR2pJPPbMNNO1kN6C2C9exxsiT5Jyk+h
	R7dz/xkx8wB7208JrByXoHcyAI7Dv/50T8tJmFygXhGI+pVQ2sPgFEJu0SeB5c4BnB2r0QCHc7r
	26AOPJLiVD0wwO/12OyeK+77YzC5+vo1Woo1/7vJdZFbyuY8IMlEexC2MdNwMm1cBtthFTHLypJ
	i9/E1QrliICFB2ONFVdIP4KUjJFIFGReAMYw5yhu34WEt2mg7NTzlXzAJW08vvwjZCmXZs=
X-Google-Smtp-Source: AGHT+IEsT6AYnql0T7zlCNvOahx8BTYyJ+IW0sH1UvnJzbYCCmPWp7Cct2vMxCYT86QC+/C8HxYvBejoGMBDAF+WblE=
X-Received: by 2002:a05:7300:5781:b0:2ae:5e6b:dc41 with SMTP id
 5a478bee46e88-2b17d21b748mr1497359eec.14.1767779570503; Wed, 07 Jan 2026
 01:52:50 -0800 (PST)
MIME-Version: 1.0
References: <20260103083232.9510-1-linux.amoon@gmail.com> <20260103083232.9510-4-linux.amoon@gmail.com>
 <6f30a01c-8fc4-4368-88ef-7c513c505515@kernel.org>
In-Reply-To: <6f30a01c-8fc4-4368-88ef-7c513c505515@kernel.org>
From: =?UTF-8?B?5byg5rC45rOi?= <giraffesnn123@gmail.com>
Date: Wed, 7 Jan 2026 17:52:38 +0800
X-Gm-Features: AQt7F2p0-kEhpv052gHNNvlDi9s6r7fu21_si4nAOG3q3nXtXMATV47Jwa2xpS8
Message-ID: <CACpCAL0GLMV-2p1tKAXe6R+N2c4YadH9vpEG3GdPoHTNTQSuow@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] usb: typec: fusb302: Switch to threaded interrupt handler
To: Hans de Goede <hansg@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_015252_000470_E794B17E 
X-CRM114-Status: GOOD (  12.33  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Anand Moon <linux.amoon@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, open list <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, FUKAUMI Naoki <naoki@radxa.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> Still ideally we would solve this in another way then
> switching to a threaded IRQ handler.
>
> As the commit message of the mei-vsc fix mentions
> the root cause of these errors is typically an interrupt
> chip driver which uses IRQF_NO_THREAD disabling the auto
> threading of all interrupt handlers in RT mode.
>
> So the first question here would be to see if that flag is
> used in the interrupt chip and if yes, is that flag really
> necessary ?
This is very similar to the issue addressed in commit 24b176d8827d
("drm/msm/dsi: Remove spurious IRQF_ONESHOT flag").
The IRQF_ONESHOT flag is preventing forced threading here.

In irq_setup_forced_threading(), the conversion to threaded interrupts
is explicitly skipped if any of the IRQF_NO_THREAD, IRQF_PERCPU,
or IRQF_ONESHOT flags are present. In this case, IRQF_ONESHOT
appears to be the reason.

Regards,
giraffesnn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
