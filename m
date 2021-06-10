Return-Path: <SRS0=8ktI=LE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80C63C48BE5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 14:17:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4240F613F8
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 14:17:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4240F613F8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvpyaO5QyoMAgGKcZANbJU8uDfU+qsnUi6YO+6ZqySc=; b=FVA/1kde+tN23t
	sbOM0NBzXScpICB5VaDTJgb2xsx4EnKs7YeRla6XfEww5245EGq9ayvcHQC5vZwLSinZWqc2GDejP
	RgN1Y3AY2y9b1V4dJQpq9xICOZoZdq6XheZblRlIFPHIrOIrVt+nANfFb7/yauJKblYYKqeg1eNVX
	tg36uDRnVDVES6VEs3Yv+ZQ1KEt6dcrjGjB0qloS5G/uDTYnO6rs3fV0DTih/BEfx+vuK3wpM7LHk
	7yDyw1m6jMmKsLKMWSNI4mCdD2sGBtbyc3QM1z0JZox2+uyZQ7di4DARnw8FdkrvNkeUyeoe4jeQU
	Ez3rltnzNCzhYrF7WmtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrLUz-0016bu-34; Thu, 10 Jun 2021 14:17:33 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrLUw-0016bS-NX; Thu, 10 Jun 2021 14:17:31 +0000
Received: by mail-pl1-x62c.google.com with SMTP id x10so1098413plg.3;
 Thu, 10 Jun 2021 07:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=Qr+1IlJcgDNDchkAHw4h++pZkdHdyTM7HD3qP1Vs7HQ=;
 b=qrwcXgGM1x7QALpPDd+KCgaUYfaG3b9bFaQT3jFcf95Xbsk2cqDKXblyVYwGoFg2ty
 256uo970KVHY5Ut8qtlWoyYcREDQI0N2nFSNuFd5uOTTSd+T5Y/Rarm0/20sRHahxTfr
 XGIWs+NAOJllN460pdFynNP5sl0uSaTOi8F6YfQB/liuupsUB5E8wiaK3ISWQrE1ZORc
 AXAIbkG9gO09Fwyp559l73T5kqN1GFeCZ4/reb7MIK70IWVv2nfS5Jc2/5hEIuMHY69v
 MyvoqruWTi/DJAbyXQgDK8vFLfykvUDkA+g3HGTdOjubms8CNNIvjJ8QKTkK296NxomG
 01/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=Qr+1IlJcgDNDchkAHw4h++pZkdHdyTM7HD3qP1Vs7HQ=;
 b=Zkune2cetZqvZre7wljy1d907pS7W11p9DUwK1cDWOY1d8uhit7dAX4tWmgBIDEZga
 2w4xlKGIAkeLAuaUmbWJXuYgeGXqa7fr6tR3/G8jUkZt8hymEz5MczZALXclpmcTfw4s
 cSNeQiMeulM5xSvUXy53EbUrH5zqvlL44yFWRQl9VN4O3D9SoyrYGo8lh23dBI9Z2HBT
 4Vs0B+RY24pd1jP7sPHICz/FXO4fHHC8kIx/0/DPHWacl36l6SsyHTukbM2yJ/vA/b4X
 VXQ7LWFH+85/FzH63062UTS27xGQitdrTC+ifTKRsGyMxnp2PYEtKPFn2HNvwqie4OR9
 65Mg==
X-Gm-Message-State: AOAM531sAWeOk0ToKi5Wj1AijfDloxFwoAsX3uNuE2sljFyosR+VWbIn
 093ZyAsmfQemn+eVUAt4SRk=
X-Google-Smtp-Source: ABdhPJxervl3oVnLBCHRuQ8kkSIWXHCgBRo0ufvlwRVsg78SmcUvr6ue2xbrVsYa3LDG+S1Mp03vKQ==
X-Received: by 2002:a17:90a:f197:: with SMTP id
 bv23mr3539616pjb.113.1623334649554; 
 Thu, 10 Jun 2021 07:17:29 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id 23sm2759820pjw.28.2021.06.10.07.17.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 07:17:28 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Marc Zyngier <maz@kernel.org>
Cc: helgaas@kernel.org,  robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org,  alexandru.elisei@arm.com,  wqu@suse.com,
 robin.murphy@arm.com,  pgwipeout@gmail.com,  ardb@kernel.org,
 briannorris@chromium.org,  shawn.lin@rock-chips.com
Subject: Re: [PATCH v3 0/4] PCI: of: Improvements to handle 64-bit attribute
 for non-prefetchable ranges
References: <20210607112856.3499682-1-punitagrawal@gmail.com>
 <87lf7jqavd.wl-maz@kernel.org>
Date: Thu, 10 Jun 2021 23:17:26 +0900
In-Reply-To: <87lf7jqavd.wl-maz@kernel.org> (Marc Zyngier's message of "Wed,
 09 Jun 2021 17:08:22 +0100")
Message-ID: <87r1h9kdmx.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_071730_792705_DEEC8CCB 
X-CRM114-Status: GOOD (  15.28  )
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

Hi Marc,

Marc Zyngier <maz@kernel.org> writes:

> Hi Punit,
>
> On Mon, 07 Jun 2021 12:28:52 +0100,
> Punit Agrawal <punitagrawal@gmail.com> wrote:
>> 
>> Hi,
>> 
>> This is the third iteration to improve handling of the 64-bit
>> attribute on non-prefetchable host bridge ranges. Previous version can
>> be found at [0][1].
>> 
>> This version is a small update over the previous version - changelog
>> below. If there is no futher feedback on the patches, please consider
>> merging them.
>
> Thanks for this. This brings my test machine back to life:
>
> Acked-by: Marc Zyngier <maz@kernel.org>
> Tested-by: Marc Zyngier <maz@kernel.org>

Thanks for taking the patches for a spin. Based on the comments on Patch
1, there'll at least be another update. I'll copy you when I send that
out.

Thanks,
Punit

[...]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
