Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 569AECCF9F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 09:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FeRqzq3Pb1UY3Gvp8imVFfpDzmI5r5OIoaPe3yg8Xrw=; b=q1RgUiHMnznbs/
	qBLpC+0a2XtviPJqc8t+oOCKVc9bhzWDcf+gAHtLEchJOqG/FkPOWnSrBr0Mu5YmzoCZQqmT4bq9W
	u0CEDwxZ1IdtHSSZcxs/EQO+JKE56v1ONEdaIdv0t1P3kyzJ1e7PqvnP9EuvwaSp0hDTbfgwMapaf
	1tIlPX9EEsfN2HyYVY6YfgjphJPZ6iHq7Yj8046ZK1JR/Y7jY0Gyv32Lv31yLp4zuN26o5T6iV0Lf
	Hr4kAM3YZ6sltdYyLSrnvGw4sDYE6owG9POy6JSEM7s4Kjkf7o6wDN34clg6y0OHi0CTUzBgJyooe
	Fgi5aB+DbmF2Kv8Yw25Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOmP-00000003pkF-3re9;
	Thu, 30 Oct 2025 09:17:14 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOmN-00000003pjA-0lTI
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Oct 2025 09:17:12 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2699ef1b4e3so1057065ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Oct 2025 02:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761815829; x=1762420629; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xiJKIWzvTq177G5Z1HqBbhq6LXsLpoXZ8DAbP1RW7sI=;
        b=A57iX3Oj3XByd1yT0s/wWH/i/XpYGs0dw6vg4tKhbpN5YvEfkwyzotmGO0euy3Hpai
         Wao3n6sSrKEMCxuNHvWDxYfeDwKAefUfPLnDjvltI2k1MpPJs9S2BQg+HwVa98mxahtR
         uFlhItCHUl9jZ3vfYvePHgKTMDPqFiBhNOJj9nZ4QqczK5ajLpQsDiieatSzLmTPXt1D
         BGLjWChwBU/1bh3yqXhOvuZ5m/aqQZTaAxuGLpzE+vh6QWcjs5MLruJG6Ju1ZQo6JzPJ
         6l/UfAZocI+9Od+LnrAXTHDIgyCyUK16CbWWlmWcqz41fqkNlk6NQgz/Fsib/0P6dSAd
         fGAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761815829; x=1762420629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xiJKIWzvTq177G5Z1HqBbhq6LXsLpoXZ8DAbP1RW7sI=;
        b=UtK9bcVOytxd+dfd5fBJqSOu8CscOwN7DLcjTCbjhxDtVMdvL5mBPjNdQFd2sAPQIK
         DdXbfFtXHNtAbp3skyWuN+PrUK4GwRxCpOeUTG4ENEF6vVuZcIAQyI8p9VyrLeGrzeBD
         gvP2P7tfuBXfzEiApl99MU1G2wz/PGxjOwmn/NYIx9tnKimJpAa0Wii4deVE92Rvp8ca
         cLtaXHD5POG66KHCs+S6iRtQtYIPsSIDSMIKRckkkE0lfX4LCGQviFwpADQFk1WUiO10
         OkFy5frYVRJu8KjYCYHYa+KUmugxmpxr2rNsuAqAHkuAtBXV6yCCZnWRsogY6tiYiTmV
         TCoA==
X-Forwarded-Encrypted: i=1; AJvYcCUMeor+kILDHg334Di7k14De47ilxDrThHjEJQPWJMb6KIFoZBOcDnpJMVjkBWK5Pp6zrM9FOgCE0RzRtZcNA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxeIAFb9lfoGzwYrs5vlReu+ZXTP7Ch5ceqWNz2frUsh3Y2n00p
	Ch0HAoOtnruazaDdgenGEbUI5qW+3E3EcOuixno2oT+NjmhyQPKMs+ag
X-Gm-Gg: ASbGncti1HKZVZJl9LkZuXWM6R1Vgz+cNGkV2Z1Uat6nFwnseZoPB4PhQuQGnn0nj6L
	DSeRC4BjiiOZMRNTn/ai7oZk+suYH/mPDDHjOSPp7q/givMu9XUxA1GpKqosX0P481FbClsoDvB
	c+pUZpk46qxoPX2n1dVeHyz+lEvZX0gFV3AptcKwkbOpPlTTNn6DnhsXGgrI5bRoJ7IYNpdvG8F
	DpgC27+gSbPVQv8a0NWidTaBOu6uruxei2MHR4JGw3+OdqIMPT4ftAarPNvRbE8kdHKlRSQheS5
	p6ymaaAVWmeovn7TgLyMlDNGDDjY6uzXmwhjBZ91zkNgSjsbmfTYsXYAoTgkjHckVllF5RAtNd5
	/AtbqFReJS6T3JX9O75U0NzTEoyN6kvezLxiABN/VWfLfkkTUW/jbUp8XtoT+7gteMRk7a2ZTNU
	AW
X-Google-Smtp-Source: AGHT+IEHwddQUWpun54rQcO7TrQwu6s7Rbw0jMDLSLHGGO431eRobH10Dl1uhW5PbFwDQhRzruCIvw==
X-Received: by 2002:a17:902:8c92:b0:294:9847:fbfc with SMTP id d9443c01a7336-294def6c333mr27333195ad.11.1761815829218;
        Thu, 30 Oct 2025 02:17:09 -0700 (PDT)
Received: from rock-5b.. ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e42f3fsm178469605ad.103.2025.10.30.02.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 02:17:08 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: cnsztl@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	grzegorz@sternicz.uk,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	robh@kernel.org,
	shawn.lin@rock-chips.com
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6 with A3A444 chips
Date: Thu, 30 Oct 2025 17:16:49 +0800
Message-ID: <20251030091649.25396-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com>
References: <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_021711_212729_CBC5AC24 
X-CRM114-Status: GOOD (  13.29  )
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

Hi Tianling,

On Tue, 28 Oct 2025 01:34:25 +0800, Tianling Shen wrote:
>>> May I ask you to test another patch I just posted to see if it fixes
>>> your issue?
>>>
>>> https://patchwork.kernel.org/project/linux-mmc/ 
>>> patch/1760924981-52339-1- git-send-email-shawn.lin@rock-chips.com/
>> 
>> Thank you for the patch! I will ask my friend to test it but he uses 
>> this board as a home router, so it may take a few days or weeks to 
>> report the result.
>
>Hi all, sorry for the late. My friend has tested this patch and it works 
>fine after 50 times dd operation. A big thanks to Shawn!
>
>And hi Jianfeng, I found you made a similiar patch[1] for the ROCK 5 ITX 
>board to lower down the mmc speed, could you please check if this patch 
>also fixes your issue?

I don't have rock 5 itx near my hand to test, but I have another board
ROCK 5B with similar issue. And after applying the patch from Shawn, this
board can run HS400 mode with max freq 200000000.

I will test on rock 5 itx later when I have chance.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
