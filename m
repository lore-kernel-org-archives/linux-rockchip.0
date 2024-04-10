Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65EB1CD128A
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 17:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YwCTfRlyCjhLY8nojHBGu3OZwyEQkLielPF+Wv0C9EU=; b=e3EQUuO/YdAFKM
	nR9n2tjhqfSFEOlpJgqEnPXrpQSML3FV7MmdySUdcejS1BbXltYiKPkzd/O0KrfLTWRtzqsOcZrAq
	yiY+310upj6ldHQfIN3bvxAhObqf+s5RM1PURhVHvt+qUvIvHeoZb/wxhFpGtlj8twMUmIokcTBly
	NMqAEExAbchm7PGmoVXIxqzT6nTEqw8QMrR4K8hPszX6LqAwv5oTq7y156uPCYLZEp6bDopg22MIH
	iZdHdRt686EqXila4Wn2+Z/41VOx8ES3RQDT8R9COMnBZ8BKhlTJMb8MSg8kPC31Htv0A+Zt4RzS/
	rMOFfb/XIOszCsSoatQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rubpK-00000008HEI-01G9;
	Wed, 10 Apr 2024 17:33:38 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rubpG-00000008HCQ-0QEI;
	Wed, 10 Apr 2024 17:33:35 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6ecee5c08e6so6593920b3a.3;
        Wed, 10 Apr 2024 10:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712770412; x=1713375212; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xODv+YwTcyoEbclY4dNpd4xlX4hgVswy/9vscvUzER4=;
        b=Jajz2G4uTFLxSSSWXvrfcU8BoVl8cbhv47SBNd8X6w75zBI+nRkJ8Vy3cY3FcXumTr
         QuQYVEyVBPVahTtlcWw3cykhI9Nffc28v2I1GykS4Krak8Fq+eoxAdnszHduDj6rZ58b
         /hXEYsfWIaT8OC7Ujq8xXlHt20NE2tfdvYQmwZX2VmYyyXLzhj8HihQphLDHkLagnj5c
         Qo/we1HMAoLZXS+VvnHyrh3Fc95gev6+D91RQYsLF/jxsR6aJTj9lBEH/q+AJpB4quiC
         25D7fYa9yQy7IpVj/4QaPHMCGM1EZowhE5WW3MMIlsDQ5RzoXjoPZMkhu8aaCFvpL/7R
         YBtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712770412; x=1713375212;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xODv+YwTcyoEbclY4dNpd4xlX4hgVswy/9vscvUzER4=;
        b=eepJNYq3StzGdNEGCu6Ggb95ZxFiprTjJn+YzRbmaQw5ZSY2IW/p7GY55Cgh1aMMQa
         QABMai/DD6ke1T3xSd0BsWMiI1Flo/hsBBxwe3hQhQxucTLXNrntJQZggaTCchrKQIeZ
         9a4htBMZLh9YYUqbRzw7y639J2XdZEq5pl5mlJP/B80oCtt3ZDY9ySzRejXPF1WXCHC3
         E2YtCBypYedzA+I8DGCZgRmghy1VCK8jrYvpFllAhq5mAfgu+OJtpuRB9VvliQz4dzdV
         TdE+uSzqdAUFxrrM55x/EJDsDVFb9XKg0FeWhbX0guqdTHC/DcAuwM/rh/qAKp/ia34R
         eJEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpGQpkltOnb8Hxjte8g8kQtvqsljQDzgYa6TGtNYXeyCS3CIgeLL2oSNVtRylrL9rOAGLz27OCNlNEI3tawKLKe1kuk1BrGIvBFKeolk0fYxyAOAclggy/F005TH19AeTVN7L+WHYFVsMbB2hkWLZaO9osb2jDcVE=
X-Gm-Message-State: AOJu0YwWENKDlW5CJ0sguK7jI6jdOBMrNc7sESPPmNHXQIetVBkzUrMX
	u1kVesTNPKcUpbpsiGmGw09BQATgpjqQLvJy8n0682bsBONdHl0/
X-Google-Smtp-Source: AGHT+IF2oPoMCMFjgJy0pGIOQEvZP1Lg66viYwlG9lUpHiDsZ3hIOK2G/eMecblgfcS5fb9E29wX9g==
X-Received: by 2002:a05:6a21:2d8c:b0:1a7:590e:1fc8 with SMTP id ty12-20020a056a212d8c00b001a7590e1fc8mr3376025pzb.17.1712770411655;
        Wed, 10 Apr 2024 10:33:31 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id v13-20020a170903238d00b001e49428f327sm3640303plh.176.2024.04.10.10.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 10:33:30 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: shawn.lin@rock-chips.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	robh@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: Re: [PATCH] arm64: dts: rockchip: remove startup-delay-us from vcc3v3_pcie2x1l0 on rock-5b
Date: Thu, 11 Apr 2024 01:33:20 +0800
Message-Id: <20240410173320.191923-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <432000a6-1de9-4452-beb7-6954677e34c8@rock-chips.com>
References: <432000a6-1de9-4452-beb7-6954677e34c8@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_103334_190673_C9D19BB0 
X-CRM114-Status: UNSURE (   8.48  )
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

Hi Shawn,

Wed, 10 Apr 2024 14:30:16 +0800, Shawn Lin wrote:
>Could you help try this patch to checkout if it works for you?

This patch works for me. Thank you for pointing me to the right path!
Looking forward to your fix.

Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
