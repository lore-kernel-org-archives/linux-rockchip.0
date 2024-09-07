Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09EE2E6FE47
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 03:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXa+fxRpNDVxxFf0QAqfPgnVUi86RSBHTyeB7CF8zks=; b=UoDt1WgIpRz9aA
	rJw5i3jF4HUNclh7TTuE5QymM2Lkh2d3JPOUROJ9tpN7cCE7+bnwKKIXahp0IpbsS1zliaZX2tmQC
	69ZOUZcX9IGIB0QqTcMiLWlPxR8jAY20RrFZy8r81/i+431g7SUq5neXDR42PSUQxCf0bRS2fDXEI
	mdCn8dbwA61SBVOahKukkVGwrZjrBDdRzD0a+Ib4O6wxwn1NI0mE9rUKIlvwGqsL3UEprul2bJ1dM
	VBSqxk1Wkn/E4l8/TaKYW7/jITojagRSGc1uhn2ifU+3mZ8jl/7/V5E+5bdxcDJfcxFWdFCr7SHeL
	DQmOI3Igs1xS7/+khcVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smluX-0000000ECiE-3AR7;
	Sat, 07 Sep 2024 03:14:53 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smljU-0000000EA67-2M9d;
	Sat, 07 Sep 2024 03:03:30 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-5e1b6e8720dso395682eaf.0;
        Fri, 06 Sep 2024 20:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725678206; x=1726283006; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BRAdeMKzd8GauuC39KSsRCc9kFo3QimzcrHIoNem7IU=;
        b=eDh5TMpQLzZk/uAZZpfFL1qf+ebqdGdwwlnJCRg47p/ng0y1+33m8vEAohQLVRBDS0
         7CypIsw4pWL8nrWCii8Wvi8UeHnKchtvlOs20TDqIeyJuIbCy9QAZd8O+OXEhvPyXx1d
         Z3jpI1xVeGgREl1cXSfpYkoe1X9dO64LMnkTOqxjkj7OHeUkys49Y/xVcl9q1lruZtjH
         yb5HuNf1mMyCsWzgxAcM2/uVpemwHIBpx0U2du9p/qaxQAXDfWGbHowOH1sRQbDtdZh9
         DnR44N1lN+fuA34/GaljmQ9sFNzo7pHBuIafflSwJNAsvA1dfumj7lyph3KwtieoUYeV
         2f3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725678206; x=1726283006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BRAdeMKzd8GauuC39KSsRCc9kFo3QimzcrHIoNem7IU=;
        b=dpMnQh8VQ6CilLD7H1VgnLd0olCCfw3M47N8fQitmbjvVzsfzuiKM2+X7jVNrZNP2D
         ZsSzxlojewTwN5nPg3DN9uoopHLBoSPoN4RuMNAZOM2yCzfypXqwbs9Gz9UVvXjnMb9O
         SlyY1bCML9skTw7b68QvL9DXD+MFIZU6POL1UmLaAIeC50ysTUxCGRkdfxSAy0E5QoR9
         94821bOiPNNbU0/M45cTyjI7Rxq1ikmSG8NmnMLNbPk0kciiFaFPk3Y2kFdftkwMrdUX
         Z6s3M4HyDXie03ktHP99yb650Rp7DnPasZYoSzeSCQV7AkAiIu4FI0g4V4SR2XPgjJkj
         GFjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJCVibnJts6JySczy869FgTfDF7MYI1PDMAM/eUwo1eX8fNFTRXuMxLn/NuIPMvpM/88di72won8oz4ji133VQ@lists.infradead.org, AJvYcCW6Gkmqc92vfEn7D9uMRGJZLEdZLieyVzEnxLTKuks3GGmONFVWs/CWBZr4ckzX8nOkCOs3rsMC9ym/U6YvaG8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxY2qTa8k3oPzngsmk+tz8kcAzi0jsljxKEVnF32HX3C7dbtl5X
	DGIcOv7WupONWW8zQfqfNQwKD9GbScbJ5qgC2uV8Uwf/rse4tSHR
X-Google-Smtp-Source: AGHT+IGf+cTOg4F0hrHoR0BIG5sBf2EpDaf9/wE0zTHe1c2j8df+WSLWwxBuB56wKCCNV1Nhwmt+IQ==
X-Received: by 2002:a05:6870:6391:b0:27b:5890:bd38 with SMTP id 586e51a60fabf-27b9d7cca72mr1541424fac.7.1725678206135;
        Fri, 06 Sep 2024 20:03:26 -0700 (PDT)
Received: from localhost.localdomain (111-240-109-89.dynamic-ip.hinet.net. [111.240.109.89])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d825ab136asm156961a12.86.2024.09.06.20.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 20:03:25 -0700 (PDT)
From: Min-Hua Chen <minhuadotchen@gmail.com>
To: didi.debian@cknow.org
Cc: airlied@gmail.com,
	andy.yan@rock-chips.com,
	andyshrk@163.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	hjc@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com,
	minhuadotchen@gmail.com,
	mripard@kernel.org,
	tzimmermann@suse.de
Subject: Re: [PATCH] drm/rockchip: include rockchip_drm_drv.h
Date: Sat,  7 Sep 2024 11:02:59 +0800
Message-ID: <20240907030259.1243487-1-minhuadotchen@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <D3Z5JMTKPQIS.2M5O5DY0S4U9G@cknow.org>
References: <D3Z5JMTKPQIS.2M5O5DY0S4U9G@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_200328_625493_9D77FDB1 
X-CRM114-Status: UNSURE (   8.08  )
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

>FWIW: I didn't see it either, but I assumed I was missing the right
>context (i.e. patches) needed to trigger that warning.
>
FYI

I triggered the warning by the following step:

install 'sparse' first

git clone https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
cd linux
ARCH=arm64 LLVM=1 make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' mrproper defconfig all -j8


cheers,
Min-Hua

>
>> While implementing my feature, I happened to find that I need to
>> include rockchip_drm_drv.h in rockchip_drm_vop2.h
>
>Makes perfect sense :)
>But if the warning is indeed valid, it should be fixed on its own (IMO).
>
>Cheers,
>  Diederik


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
