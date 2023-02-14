Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AA19C61DA4
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 14:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cob+tj1IBImn0o9igIQ3H3Zy1dY6dwUV/G/ZMpPnrTc=; b=xm/vUuMdqF5nAX
	2qP0UGa54eA1ZUEgKh7UdCqDORqstg1U1cDLXaOQXiQv2wDogFuoYBTwkZwLk5haOCh1M2+Bd4/MP
	NwWDsVuUcx8AVIr0mpz97SqU0GhVWwrOiLokIMI+INhGF1hgaglc7CpM0Ua88xYIqeiTKBiRKfRIs
	GCFeH7N4876WehDSKTbCPEaCW/tuSR5nPAWPOETELjsqX7X2F4rWQ4Gkwn1hUoQBu2gNIohmHpkIz
	RgDxgNTGWf8y+bRXoPwjVVCvLejjB1TVrfLKk3f7Bf42s7KipzUyL8Z7HFDHHwMaLzNjaBKR9mWVM
	D5wPr4cOyClPNwpTpajA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRwV3-002FJo-8R; Tue, 14 Feb 2023 14:41:41 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRw0J-0021F7-QT; Tue, 14 Feb 2023 14:09:57 +0000
Received: by mail-ej1-x62a.google.com with SMTP id rp23so40361507ejb.7;
        Tue, 14 Feb 2023 06:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8MA+FezG4F1FhZiXu5UiMUXpedUBh3Xy0N9KRcXckUI=;
        b=G1xR6IRfr7vwGp2wPLVa+Hb9A6hDLa6n7jzOZ9CARQAEfa7Oehy+rqcuwgKFYZvwsd
         hrAnqnVf9/4zX180IH9eCkyH1TEDePKk7EEptuasz5scZzxI7dj5QOiJLsiSKZGVS89h
         cMu7fkuBSPbt9PeNyrW8koTVe7Qp6+IhP6ZNzENlgayGEIG8o4FNAvdEggiyD2N8UEiO
         7qZeuP1+qCLmlhtxpD3nJtHoutgioxlvtoxuGBoutZsBz7rFpX3RIV81iQ2O/EcGYi2W
         gJZMfSWa9DWW8YB5YwEScCqyZRRKsHSaTkuyhh7PsxZlGiNpv9s56Uo48KH6sv8+aOkT
         lGBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8MA+FezG4F1FhZiXu5UiMUXpedUBh3Xy0N9KRcXckUI=;
        b=FlK6UhYsxQFKXnBFQX/tT94GYWnoVpIdidTRM/WicQyg2s1LBW14BSEXPuqxvSZZut
         p2rjMSzCc2CdSWkcbH7Mofzytca1kNPAwYm7ZXPXH0+uecO5fYzX8aA6EG/T+gsX7b4L
         j45bZA1HPMwyeJe4W4ohUjAxA3WdYmvT3wrc7vJX0y6Pc3gLMd0G1c/uBHGl1QN7Cgnk
         /C73dC1YU4FN9wJi20HY2mNbYbZ8HtrqLFc+nxO8Ewh5jvU8Y7tJ6Uw/pU7BAT52a0JH
         1NCp4B2olp07okHPCxgC116rPGNAQySc7mfYb79CCrL01YaF5jX+wqr2EA4+v1nfnOtk
         /Klw==
X-Gm-Message-State: AO0yUKUCHphwc5hdZzrLqjVmeX5QCy7hTNV+AcD2sejSSlzaoGCgUoO7
	NBbkI51E9e/6O7ofcL+4PKE=
X-Google-Smtp-Source: AK7set+gsBO80IHS6L6K/JrkjsdLQmNzyKDwSGga+oFAqSy+DEnpXAKyJueMu6hB9+W/2qWlDCpZTQ==
X-Received: by 2002:a17:906:13d2:b0:8b1:238b:80ac with SMTP id g18-20020a17090613d200b008b1238b80acmr2756454ejc.67.1676383794181;
        Tue, 14 Feb 2023 06:09:54 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id n11-20020a1709065e0b00b008b13814f804sm332241eju.186.2023.02.14.06.09.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 06:09:53 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH v2 1/9] PCI: rockchip: Remove writes to unused registers
Date: Tue, 14 Feb 2023 15:08:49 +0100
Message-Id: <20230214140858.1133292-2-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_060955_927001_C7A8B25A 
X-CRM114-Status: GOOD (  11.02  )
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

Remove write accesses to registers that are marked "unused" (and
therefore read-only) in the technical reference manual (TRM)
(see RK3399 TRM 17.6.8.1)

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d1a200b93..d5c477020 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -61,10 +61,6 @@ static void rockchip_pcie_clear_ep_ob_atu(struct rockchip_pcie *rockchip,
 			    ROCKCHIP_PCIE_AT_OB_REGION_DESC0(region));
 	rockchip_pcie_write(rockchip, 0,
 			    ROCKCHIP_PCIE_AT_OB_REGION_DESC1(region));
-	rockchip_pcie_write(rockchip, 0,
-			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0(region));
-	rockchip_pcie_write(rockchip, 0,
-			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1(region));
 }
 
 static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
@@ -114,12 +110,6 @@ static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
 		     PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
 		addr1 = upper_32_bits(cpu_addr);
 	}
-
-	/* CPU bus address region */
-	rockchip_pcie_write(rockchip, addr0,
-			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR0(r));
-	rockchip_pcie_write(rockchip, addr1,
-			    ROCKCHIP_PCIE_AT_OB_REGION_CPU_ADDR1(r));
 }
 
 static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
