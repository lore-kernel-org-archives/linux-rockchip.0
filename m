Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72395CFA45C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Oct 2024 18:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKnZui+VJKnvYQ8wK1Mm+SCokrbZynC5jRASPR/jyOE=; b=NchftxOKH40B7T
	B1QgaPmq85syFFM13txdgrPooDG6Wj9IcWCLpofaeE1n/IVLW5uLcwgJweLjKLfJVzSHoE1L2OlCn
	k8xzOO2rHY6YCXIFDBphDy2jYcSnUZ9illRXlDgjNNkrqGEYnguf5Km8od7nOXETzc/bjysPLSQGH
	qng/EC6Qat3l9MmwWVIKQj+ydQ8mCiiJCiqgWLpsXjW6LhGRQtc9KZPqJl9K5TnEtwnqV2A14rzs6
	oYbGmjw9m8qJrhHV06uKoa4cs9OWjcU8rbjvDSNQ+dJ/5IUHODSS5EMpR7EGwrzqayeTzyqZjxy3m
	7hKBoz73rBuM3KqUe1Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ftl-0000000FUN1-0h2Y;
	Wed, 23 Oct 2024 18:15:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3eSZ-0000000FCXU-1z0C
	for linux-rockchip@bombadil.infradead.org;
	Wed, 23 Oct 2024 16:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=; b=REIDE38ULL13Qhfo+5wIm1H3sE
	f28bVYgr25Lfevg0pKt9ytSQNP9ZGuuPXljz/VBp58giXZEuWn/ksGkadBsYsLTEMSfHuhc8eCrYj
	MqCZGeIp0QaBl8a1sSWkbCeeSUM+5hXcK1JBqKS1wvUAnzgD6ALAhhwHfZC/tJDI+VAFyasQBkeky
	5Y9VLKU1qr7bB5s2CI8xtdv0lPKJGgswmq1bgWpo9zB2ygrLr7QH2Ux0bUe+6rO14gEtvML62bLmX
	f4HSwl4QL7zZM1Lr+LuuAaN+eX8CjbxEPBL/2uA5NlJyD0Fl8OKU9TbM7F5HIzb+vTKERpanb/jG7
	i1oDy6CA==;
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3eSW-00000008SzS-2mVk
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Oct 2024 16:43:46 +0000
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-5e5d0a80db4so3639947eaf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2024 09:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729701821; x=1730306621; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=g87FgDmYs+6sl4tDkOlPIVBtj1fpCrbtk4jTDEsnB5QArEhRT2h5tpYDkzOCo1tbjT
         SuncJQ9SN9YltzfvRY/pyRpWuF887gt40h8Y8n08Cp3PUFF5A0wPYYjkVZxMwFXklIWW
         9rALI37cfvEkEZ4DEP6W182V+T+N2CqZmObAptg8fwEXAmZRK4ndhlnE/iLuVZrz6uDO
         N/UvH+AOeMF0LGzghjCW0KXBhhfOoP9rmjShXddRq2o11k6DBsbv7Q89MsYzjaytOC2s
         IunJ4YqYKBCGX/gT84skE80pBvVZELXtqdz80OFcL07U3mZI5/pNrARK3wiFw9e7OcuV
         dRbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729701821; x=1730306621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=t+xaDsRcUiEgjSi6btTUpBXazbuMHjUlDhw2q2mhcBY1z+p+76kzdtoaqPiW1wmZpB
         7/3FZNHSKmPDJdfWAiu4InJdmJQM+pc+6X6UOasm0eMni9Gz05I0B1bmM2WARqLjfmDm
         pxfCP4gGIIB3NMDje/Dx9YB7iw3czsxKj54e05ox+Fo76t8W8huQhmsy1aMVy5LDTil8
         M8QacLVEgdBjNABla+4aeY6HqgtlJb+SPuS+22QsvQF8EywcdpzIuMHdvN1t/XuVn9Mg
         6gcnLjmVT8/CBC3unyYYzHFrX59UfkKJHPoUUtgRRO0P8RtKveH5zSDCSoKkDfeRrhve
         e5Tw==
X-Gm-Message-State: AOJu0YxysnkE8qNiNfJfTK5mAXGaAn8/3iwGEzKaxgBVS9vKUmbH5A4O
	rm58WccRyTMoSgSjkxTlcDBzjZ0NHX5w6TMqoqGDd/DEzBGVAaiDE9xWEQ==
X-Google-Smtp-Source: AGHT+IG+VLzg9P/6ys2U4VynqV0Aeqfw+dZ0geZjBZderwIjKCW7QniRtK/DU73HDagpxpcX0oABmw==
X-Received: by 2002:a05:6820:229a:b0:5eb:c72e:e29c with SMTP id 006d021491bc7-5ebee94cdd8mr2522620eaf.8.1729701820442;
        Wed, 23 Oct 2024 09:43:40 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ebb7a0948esm1861367eaf.15.2024.10.23.09.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:43:39 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
Date: Wed, 23 Oct 2024 11:41:03 -0500
Message-ID: <20241023164104.66282-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241023164104.66282-1-macroalpha82@gmail.com>
References: <20241023164104.66282-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_174344_744690_FE7D93F6 
X-CRM114-Status: GOOD (  12.00  )
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

Correct the audio name for the Indiedroid Nova from
rockchip,es8388-codec to rockchip,es8388. This name change corrects a
kernel log error of "ASoC: driver name too long 'rockchip,es8388-codec'
-> 'rockchip_es8388'".

Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d8c50fdcca3b..a4b930f6987f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -62,7 +62,7 @@ sdio_pwrseq: sdio-pwrseq {
 
 	sound {
 		compatible = "audio-graph-card";
-		label = "rockchip,es8388-codec";
+		label = "rockchip,es8388";
 		widgets = "Microphone", "Mic Jack",
 			  "Headphone", "Headphones";
 		routing = "LINPUT2", "Mic Jack",
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
