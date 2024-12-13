Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEDAAE7717F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Dec 2024 01:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fcJ+NUhnqMVaVMEyMwq85I5d80CrLURrlel8gTKIYT8=; b=w0t1JpeGASWL24
	suBw9124rKm2FuNrSDOIsQrcdfxsk3DKTSUSPQ7fishzSs9uMZqAFYSoCtF+AbCFuoncg6Rqxrzcw
	dfJ4LUJU3N1oArD+s/M5y5pJ7gdrJRyjbzr+7527GVAlgqifZinH38CEvuTD/AZM7mAp8W7gqNyGX
	qEdX+2ZBr7lw2UJouQZJwyCPOEsENUclvV5wNxvxKMB8mZinyO3X3+i18QHEUiCReUqiyFhXzkXUK
	rRIWOuwSiNCQPjoFvfk10TIN5E8SbLMdVcRnDH7ojjjBg7l2JuAtmBXRndOvtc8dxFHEmTobSPcPx
	HZuu+4aD8xJTCbMhSR0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLuXT-00000002PiX-3PDC;
	Fri, 13 Dec 2024 01:32:19 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLuXS-00000002Phx-06cI
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Dec 2024 01:32:19 +0000
Received: by mail-io1-xd33.google.com with SMTP id ca18e2360f4ac-84435dbda4bso86211939f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Dec 2024 17:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734053537; x=1734658337; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YC2ubIXV2WONXzCpQJWlZ08KfW5UTrjL7U1HcTkb55s=;
        b=G+18iWoMUTWBspORZQdVXe8cOdR7b5vCk7QK8s/g8Beb80OAdHu3/GKehSKJsFvU5l
         /dcATBD5jCbptAgeRvzUPsOd4iU+LAL92cgGRpXTIdcpkDQlOZ4SFt4B2dzLZH6GPyTz
         LtoSaOoQ70ywj63AiQBToXW5IcLqQfi++ReZrwPDxtgngi0RZjPjpW4/EplRANPVuSqp
         uoqEJAEsZS0M1VxR4AGbtqOA2jzstvxVUau74hpyt37JwbPzP8/SD7chh7xqn+Zd82IW
         PBrQwOHRypp1w5gYtllsIIWd9CNy2a8K06amvpLaNYY3o0XOUHHSF3fj3yzH2oiQENq3
         Bn1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734053537; x=1734658337;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YC2ubIXV2WONXzCpQJWlZ08KfW5UTrjL7U1HcTkb55s=;
        b=RHDXu71/61xThhIGHvDa7QS9ek9Lz0Ud5CiLjs2ux2GF1dKBBfD3OmOH+JU0uMsWJp
         YObaFcfPR8dsmxZnv0D60hiqJmgt7+DNzOsmbjWojNerG45oNYFdN9b9SZbgld/VrRAW
         tv5Ki1n1cgwJFpuU2g3MBZWKnQad+PkWegR0ROyHdGgnBQ23cOEn3/rZ/+tkZVurGrY4
         4ujfv3vzMBxULn9XvrqJrPUtBUmcnAAS/EYZLIhLp4fYVllCVAs4W+lBbgwAYXolwaXB
         PlbDqyTAOY3f6Dlb/iG2AyMB8sWIzdWSAat78M2kuuKHy/8/u6AjDfpiCdF+sPuOlZPg
         C3fQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmn5ykVmVJ6SMOTLSTa9fzHHYYpTivT940UDqStCpEruFOH/3XoMPWwcOW5gWg/vEeog4XtFecKKOdi4ReIQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyzeuMYNiOHjUr0JHo+CO7vz1w45HAUvMGfKIdWwcaVpkbn336w
	22wgZjnfqjY40EVSrpNmq322p6XzGCY4okpMM2zG8ZuAv5caSaxg
X-Gm-Gg: ASbGncvp+UJcTRsY7T4j3m9CHsOaj0OtlsqVd3lutrqi0s7mLJpgPJ43F0+/9DNH0Kx
	2BauHnwtxvPt8KOj0y8CdWrL93LuDWLRUzJrbmkE9qjqaW+54p6yWo9oXhFl0uVDH+IRCZjEabP
	OJ9YQ9/H102/X1IwP6pE+UckGg8o/9dagMnf/UMX0lfjZfkOmZ1y6eyYlzin127CNE93CeAp6Vr
	Ti6OpzF3QDwyFC7V063klanJbADsMS5FvD2+ZsKK9LBy24o1rw8xZ9BzEvuqtV8JWsfV5KlLEwb
	erTmEnBvM+nyMKaIpI7SIU49V+s=
X-Google-Smtp-Source: AGHT+IHtW3E0+W5TtBgUFoe0PFNh54Q/yIbxK5mnk3z+QloAiN3ROvRNlgYIrctW7ERpGQruamfNzg==
X-Received: by 2002:a05:6602:1693:b0:841:8345:5eed with SMTP id ca18e2360f4ac-844e95f52f6mr54467539f.0.1734053536644;
        Thu, 12 Dec 2024 17:32:16 -0800 (PST)
Received: from localhost.localdomain (65-128-205-244.mpls.qwest.net. [65.128.205.244])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-844e8194e3csm16069039f.23.2024.12.12.17.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 17:32:15 -0800 (PST)
From: Shimrra Shai <shimrrashai@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shimrra Shai <shimrrashai@gmail.com>
Subject: [PATCH v1 0/2] [Draft] arm64: dts: rockchip: Add Firefly ITX-3588J Board
Date: Thu, 12 Dec 2024 19:30:49 -0600
Message-ID: <20241213013051.11095-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_173218_065154_3574BE7E 
X-CRM114-Status: GOOD (  16.54  )
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

Hi.

I am proposing a Device Tree Blob for the Firefly ITX-3588J board.
This is another Mini-ITX form-factor board for the Rockchip RK3588
SoC, along with the ROCK 5 ITX. This is so far a draft copy meant
for review and suggestions as there are still some issues.

It's also important to note this was originally being worked on with
a specific aim to include it in a UEFI firmware package; as a result
it has a few differences (like a pre-built "chosen" bootargs and
disabling the eMMC) that may not make sense in a final kernel tree;
I'm posting this for feedback and not as a final proposal as those
are relatively easy to reverse and so don't affect the tree
substantially.

Issues outstanding:
 * Suspend does not work.
 * The USB-C port does not work.
 * Unsure how to get control over the main LED; the commented part
   seems to cause a failure.
 * Audio output on the back green port does not seem to work; but I
   found this may be due to slight inadequacy of the still-new ES8323
   driver - can suggest a patch for that too separately.
 * Not sure if there are other board features that could be enabled
   for the present kernel.

Thanks,
Shimrra

Shimrra Shai (2):
  arm64: dts: rockchip: add DTs for Firefly ITX-3588J
  dt-bindings: arm: rockchip: Add Firefly ITX-3588J board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../rk3588-firefly-itx-3588j-uefi.dts         | 1131 +++++++++++++++++
 .../boot/dts/rockchip/rockchip-pca9555.h      |   31 +
 3 files changed, 1167 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-firefly-itx-3588j-uefi.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rockchip-pca9555.h

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
