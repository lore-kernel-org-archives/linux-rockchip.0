Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A46C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Nov 2021 12:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qCjozwBjSFptUR76RhdjjAXaOO3AWXj/DTw34lo7Oc=; b=JcGSX1AQAScFRE
	QxSQFEiANDAAshbVkCQg61XbUOVtr5hJJF3vFLOuY2XFAQaxC3AeGTaLQEO9PtQBFjxorA7x9Bx6b
	ZsjttBDkuEESST4wtLlVV0eZskqYdPrmSFX9iIhcaTMcezDT1a1CkOrbpJbjHjlRVT9ci7ENHTlhy
	Qxrdse+poVYdLQEZenYEy5T+UDBXlNsB6Q0spNU60mk97FSejG7fKmaqQdLbi1XNTduSIXwkerkeZ
	6hxr07fv1uKxL6lHF2igWBfwRoCh/AZVkA/UmsGb5gCUK9TWEkeNIo7iSPKJg1B4vBSKfi1KKWs0n
	Ucqo3f5Kk7ezKMbD0GVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrfZA-000e9o-Ee; Mon, 29 Nov 2021 12:15:28 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrfYx-000e71-Hh
 for linux-rockchip@lists.infradead.org; Mon, 29 Nov 2021 12:15:16 +0000
Received: by mail-ed1-x530.google.com with SMTP id y13so70820402edd.13
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Nov 2021 04:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rou4pRkJOQKrkwM9iYNfP2xhm0pSwKIOsmwdXqm2KCk=;
 b=Sb/IWAF/Hhlr82pyhvplMDC0a4LdkBZtLThJPQEKY60guM1/Jz5HF1upBe466BAGar
 XT+E52u166pFFrcFsm8V4s814waPHpccFcl4em8dt6kgeX6lUKsJPsyVQyVDtphIAcCE
 zX+0gaGCx/c8smHHt6zH3W2AyLC2anRmKOT2XzDqjQkPPxqOLx9LR34ty+vlduueHGft
 p2kn38x7DZbsg/26lvqIiW5mRSaM/7gJdPBTiOOD5j3oyjm7P2S4oiZRrmirsxV6Rnm6
 YMeX+lUk1/Z3iaxXTVZjuFAQ1qSPtH3eMPSH27yhY8kYV4tEWP/gdKt4MwyEnz/c0XFi
 CXNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rou4pRkJOQKrkwM9iYNfP2xhm0pSwKIOsmwdXqm2KCk=;
 b=wgm7pwgyRGmZJ7CwemI5Ck5l1sc/8si/Z1ijazYLOB1C//WVkr1cHhlHj+HVkHarFJ
 /dFeATZRS5K7okYxEGoPz9yV3fkPNtYEbgXSlcHcR6y0pmWvx2X4cPyOeMjeIR1B8Xro
 FyvqSWrhV6WTSCEb22kBcXvBGcwL5gdkt9c8hAyGVam/ARWUDFgc9cXgrXElY5AtbIQW
 iiOp+k1GMb6zOXkoj8PILY3TafOuod3vU0vCzoV62JRlv1W4lNR9pfx2HXXFNEF6Cc4o
 L2GPrXqPX68l4kbYxMrlRLGxCtYMrTWbwS91XsVDl8YJBtGtIJgziBXqEuL6NEg+V7ua
 T8gA==
X-Gm-Message-State: AOAM531lKljIM74ikXJJpQVOPDP+5LrPiI4dTXEiVZbV1RjRT2MlFowP
 HMTTF1xowSUmBHnYsoeJIGZBcOO86LsB646fEua37g==
X-Google-Smtp-Source: ABdhPJxKenxE8Fuc2uEWhdJ5OaU3u7PfxeXl72lxBq51H5tU+80x06TBDToO080t3NzzJrmZUT9pyIckGdhZqVpgWzI=
X-Received: by 2002:aa7:c946:: with SMTP id h6mr74871032edt.190.1638188112437; 
 Mon, 29 Nov 2021 04:15:12 -0800 (PST)
MIME-Version: 1.0
References: <20211126151729.1026566-1-knaerzche@gmail.com>
In-Reply-To: <20211126151729.1026566-1-knaerzche@gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 29 Nov 2021 09:15:01 -0300
Message-ID: <CAAEAJfBWFeDxZWPev9ysGWWS-m7UEBPu==NrzfNe24_gb+LuBA@mail.gmail.com>
Subject: Re: [PATCH 0/4] add GPU for RK356x SoCs
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_041515_737370_E3F3FB27 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Alex,

On Fri, 26 Nov 2021 at 12:17, Alex Bee <knaerzche@gmail.com> wrote:
>
> This is a respin of Ezequiel's series which adds GPU for RK3568 [0]:
>

Thanks for picking this up!

Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
