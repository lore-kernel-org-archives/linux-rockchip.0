Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D45BCFA45D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Oct 2024 18:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fiQXpptmALcHOoh7EZy0IyEVmSF+imTJKC/eFJIsDNA=; b=Y4KL5Z2HHousI8
	h1sH0JYg2ms4SlQbbbv2BjVFVg/8ocCsg2UZ3fen2ueArgMx5UgdjFuIYsfM05QxOAFvpZf25CPSB
	9xN5gxHUiBJWlpWDE8mVBjKMFkm3eN4Nb9zBGfFGeGDWdrizhg1OIOmWzrkLkPgRHfSd6OAhDnqB7
	1+SWEPBvPXDJ4HV2u2NoWsDZbfTuxQVaY9qly2S6J4o75J+OW1YLQDr5qmsWxkfctr2e8lIK+A+32
	PjaE0fbu4Xtw4ytxIwldVHNTJsy9JX+mc/kJNhzQi4943hw07JRh+qHdWi2hsIDIqpWt0tuiGNDdr
	9TyFzric90ojhiyHL05A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ftk-0000000FUMx-3NN8;
	Wed, 23 Oct 2024 18:15:56 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3eST-0000000FCVM-2kIy
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Oct 2024 16:43:43 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-71815313303so359a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2024 09:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729701819; x=1730306619; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o4SaRfRF23TDik88eWDn0Sxjds9qpbndyUqJVaDs1jk=;
        b=C1e2dMYlCptta2sNke6JN5Hr1JvolB7ZQYrT1THR6GXwNh312/4wuE46YrgdmkkaYv
         ixZZH7thsgHSiFSEpsIWUEkpgJNKl98yMsoA+xHoO6IYZtIgrvN/CUId+y/ifeTYIipS
         DmpmSrkxNNlJg6F2b+tEfrOl2Q9AmO/7ep57vPpR8zhqQq3hpZb2gM+SgaVaLQisVsYC
         E0d6xfEGKsCG7vHABXzieS7AQ3Y1s0yXYiTRatcSKaSkzulvROehyKppGoITLuZ/OC6m
         WjKSmwWfoCKtbjZhgel3x/ydMSAuueBO2QGo44nksiWAWrETyJctRodwtZh3rPq5FeKa
         X0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729701819; x=1730306619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o4SaRfRF23TDik88eWDn0Sxjds9qpbndyUqJVaDs1jk=;
        b=ojJExOZ8+kM6rQRybITp80esy6hm5aniaK+kJ9pzbmQEGLiFt6G4/9O0O5U9+20OJ0
         VzBhDaccKkxA30nETsrL5HR13azVOF99QeUXkODDsLAIld0JvZvKR4NdVfLBScbfeIY3
         lFkdfk+zAF31MlKQRZHVACe1OetZNTlC/hjVquR/AL5NYyYf0WfrL0LbWnjwK4asA4hc
         Rv2K3HeXjb68UfVZhZNW7ARwZ0+ZaxsA/LFp9JCfqwA3XpHzXmheJvXxBtsVB7CoLUoM
         6rb2IciaOBEPtcrCEH59P/GgNc56ZggaBpIKB95nTK67vB3KLmZzVrep+vkXQhpUf3F9
         ku6g==
X-Gm-Message-State: AOJu0YwZ8PId/htfcwlDWe6KGweuYADMm28Yujv8FxxXIsjehRdDMPx8
	AJjdVgpVdnlKxu/YAj/3HEXiDq6IGshE2MvTcGoMYlHVkVUiwiqPXy7iGA==
X-Google-Smtp-Source: AGHT+IGYMvdYvDGiIN9nPdWWEd0fKUUCMRwg4kw8ZuEVZKTYTD3LTZuB+y1tyIwPvil9qc1iEB+FWQ==
X-Received: by 2002:a05:6830:264b:b0:718:13da:ea98 with SMTP id 46e09a7af769-7184b2bcd5emr2797391a34.15.1729701819481;
        Wed, 23 Oct 2024 09:43:39 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ebb7a0948esm1861367eaf.15.2024.10.23.09.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:43:38 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] Indiedroid Nova Audio/HDMI Updates
Date: Wed, 23 Oct 2024 11:41:02 -0500
Message-ID: <20241023164104.66282-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_094341_717919_D202CAEF 
X-CRM114-Status: UNSURE (   8.96  )
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

From: Chris Morgan <macromorgan@hotmail.com>

This series is for a handful of fixes and updates for the Indiedroid
Nova. This series corrects the device name of the audio card to stop
a kernel log error, and adds support for both the HDMI and GPU (now
that HDMI support has been queued for linux-next).

Chris Morgan (2):
  arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
  arm64: dts: rockchip: Enable HDMI0 and GPU on Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 58 ++++++++++++++++++-
 1 file changed, 57 insertions(+), 1 deletion(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
