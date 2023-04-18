Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5099FC77B76
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 07:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5+YsEZWF6ZlPUyj2mPHDG86G+8UGAXgUQEa+1LaWLw=; b=DRBbu7RispVGBj
	5CQlD4iay3Lz5bqI4v/7ZP2zd1FPYx3iph+V7CuDn8rTBdECNgOCTMQoTTIADYU0jCWKxlhfK36gF
	LqJbOS7k7n6WjvamyV2Am80SGu61H3zL+k4hEz8k6gIS8zOLhfkx/fADK7UfF0YU22UwhyuXFsocU
	cik1vQTUqVbt4Sm9QoOLUxZhNt6gaUy5dwfwA3hcBCidUFgejfyYlfxrjvB2cgly6nYReECfR3Rlm
	eHUTdOEk06mMuDn+QvvRauNUC1N7/b7lM5g5x72xfdtpQZjW54LIIuG2suAsuzY8K51YfxY/EbQmX
	l2ZgO9blbknpdLi+VLHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pog5C-001CHq-0G;
	Tue, 18 Apr 2023 07:48:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pog4n-001Bxl-2r;
	Tue, 18 Apr 2023 07:48:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1lVyO1SYBMr6W0537PjqdrmuSbOOyZSR3u+HScE/D6o=; b=iaYBc5J+M8mDINqlGa2JNBai8l
	YsrjNkfy3YlYBR3P6SeBxsJuob1gsdN/kgPgMrBQiHJcCuKN48/cb0NvKqLqPNEkWNTcli0l3HOqO
	nj4rp+cv0rCAOnMzgeCEMNdq8lVTVy6kxS9ai6FAQ+PzBpyaW6kDBz9x8gDidQHHAzUjF9bX3YA9I
	KbRzfDAGuDrTImDeTWviwZGyrGD8FBHAIviTsgwoCXj23yyDOilpqhcW0Pn4POHMa79IM3MQrOMld
	rLUWTKlXBFYZtip6mO8YovsHsumU1vQI5RBks9DsJV+6tDo5ocH77Vnb+AasbUg9EiaB379m5A8RB
	4LJbrHBA==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pog4b-000Olk-2O;
	Tue, 18 Apr 2023 07:48:31 +0000
Received: by mail-ej1-x62d.google.com with SMTP id q23so61349132ejz.3;
        Tue, 18 Apr 2023 00:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681804096; x=1684396096;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1lVyO1SYBMr6W0537PjqdrmuSbOOyZSR3u+HScE/D6o=;
        b=qUu7XSNfCvyBIn1vxrIKZuYJaBFIFsyIPsyLSjwO2FHMbpXn3KFltwfhqhw+rMCtTI
         nrxLIOCzuunVLK/TAqeCH46lLv5VDGWZsap+Wy+KtM+et7vjOX2HAyUjmEfNppDE01WZ
         ZP3vSDnN5wTYZLcMbx153kWX/PEBy3WOGDS6DznA5iVtqobXisucqH+9qg1+0xI7/X5c
         xwcI0SGjLTQWxCyPRrV1RstIVmJs58lIn2eNVqrX6Sn2gXXYcQlOoVTxGSynUKe2Ovp1
         gn+Q6tPxxsxJrcnk1aDX5YRmmPtftprF2uGe8JwshKqh7SDcq7hoCBdhxNFCQkX04IRR
         +/aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681804096; x=1684396096;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1lVyO1SYBMr6W0537PjqdrmuSbOOyZSR3u+HScE/D6o=;
        b=IRQrMYI2ZzSbQCwjKg0nBhlumRktcQZn+YCovk1Eq1dlNBIbqRvrLa2sPRkMz985eX
         O/bRYjhvx6aE4P6KdgJGTj8ODqhKY6Q4QYc5ZzuCiM+dv3RCl3iZVGAHUHFUV/81Zf8V
         AlEoTKXRSGKZqjvmKDMJXR3HHLV/US2DJbj6lbpznyv1RyxNWxwMcSiiMNExAv5E/lh1
         aWc3Dm+9WA5hgP+eLjRm57Feohg3lnBzk13QV+4SH+xbV1v/49/kZ2/uq9rYjehpAGtx
         5ekoDkGbqSnLgxt/zvzahOdBJ2uzi1D/nTxU5hG5Y/u78LebBSc8FfRffMKXJY/xkYap
         7cAA==
X-Gm-Message-State: AAQBX9fiTqz8m2T/NzY7yk0UZ4oBcaJ7cEeEmC3Z+SwT4KWw3trXmKdN
	QfzcDaLPzKrk3i2I6UcBE7Q=
X-Google-Smtp-Source: AKy350ajUWbsomQPoHsGOHcaodVySW3+FMBrhALdcwTdkwGPZi4aqkNlY9auHqUYa4foHg3CgZ6N8w==
X-Received: by 2002:a17:906:b190:b0:94a:5911:b475 with SMTP id w16-20020a170906b19000b0094a5911b475mr11751268ejy.52.1681804095474;
        Tue, 18 Apr 2023 00:48:15 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id gs8-20020a1709072d0800b0094f694e4ecbsm3048545ejc.146.2023.04.18.00.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 00:48:15 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	dlemoal@kernel.org,
	stable@vger.kernel.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Corentin Labbe <clabbe@baylibre.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Brian Norris <briannorris@chromium.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 11/11] PCI: rockchip: Set address alignment for endpoint mode
Date: Tue, 18 Apr 2023 09:46:58 +0200
Message-Id: <20230418074700.1083505-12-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
References: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_084823_016081_387EB35A 
X-CRM114-Status: GOOD (  12.26  )
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

From: Damien Le Moal <dlemoal@kernel.org>

The address translation unit of the rockchip EP controller does not use
the lower 8 bits of a PCIe-space address to map local memory. Thus we
must set the align feature field to 256 to let the user know about this
constraint.

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Cc: stable@vger.kernel.org
Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index edfced311a9f..0af0e965fb57 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -442,6 +442,7 @@ static const struct pci_epc_features rockchip_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
 	.msix_capable = false,
+	.align = 256,
 };
 
 static const struct pci_epc_features*
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
