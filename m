Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C643D3C547
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 06:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wywF3EcnGJEwLqC2C0/yxotGdHl0LR2t6AcFRKaWOto=; b=NSfOqTvHyqTHHU
	RVE7E96WN2QsARRqxGb6Obm1SRC+NHt8vjQQex6oriH7gHMNozIcEqi5HPI2DAU9QEoTlvg82ir90
	j+/rgOkRDgKT9QqN882pdu8wjSTFUTtFjPeBiGeXP63+E9oAeEUfoD8dciCePN43nv8KrHt5dUpMB
	j5eJ94M918Pjk3mzSzameBqCU+o+u4uIR0kUuyfDz1LiBxGpiRBDfOVo58L6exG4JThd4z4RtJfgC
	Peq78Yp6sXlUiup5RnjEYgSJIChuZv6dHrK6VKc/jxRF6/4tflUIDKRCV+ObUIhzkTRBzX2h/I6RE
	hdGSblt5FMM8ur/IuCJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t22XJ-00000002dDf-26R5;
	Sat, 19 Oct 2024 06:02:01 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t22XG-00000002dDD-2r7P;
	Sat, 19 Oct 2024 06:02:00 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-71e49ef3b2bso2083051b3a.2;
        Fri, 18 Oct 2024 23:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729317717; x=1729922517; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gZ987UAA7uNYocGM5WXzbU2Nb0CraFouN1LG0xFXxL8=;
        b=ZlLlCgUcv0f0PGrTfDUDnWNI6I6y3Ep/tTi7oA4fxAho5EzRBgcCDjH5OYwhKjOkCW
         HoHc5x0fuG97JSiaxy9wy90G1FPFisNCv5NnxVpWLk3B4sezr6AbyImdMt6K1ktY7iX/
         yoK7HPmLl1+rvEoYV2/fGUiBKsOa7CEELQ5PUFsHExcKoyEWtvFD6XbOrwOk74JrN4Ui
         SJvW6goMSXbiLH9JRBRRlQeMsJ949yXcp5Wx6Db7oLwZQjRII7Oi50dUK8lnu/6kMw3V
         MUWjLETPpovFo/hRxNT8TIzxsrYlp/jFxNtPcPiK1MTN7DjBBdAXcMSRQ4lpf435gyU7
         bk1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729317717; x=1729922517;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gZ987UAA7uNYocGM5WXzbU2Nb0CraFouN1LG0xFXxL8=;
        b=kArgTh7M6iJSCa/KIY+/4Car6FtvGxkrGQ2hfrYXysvwZmHur1TOOI99aVZ5AlOle0
         cdsf+Xoh1WS+JX29/EelYCDI3rSHbl7CEeORyAiNzaqvzL8HpPMUjsbK11f9y/ULHOVD
         2eKBIALuV4UtkYvEUs8dj/wa3RhF/hhFh5+2Xgi1OdRG5wd2aRix+yg5WukNFem/jrpg
         C4NCUCnIUughXhl8yzfXZd7WSHG2KFJl05G6wI+gUuI8PEuj9XuDqfCC6HGNt1mxbWUA
         lSoY6AtQFh1+xJ3b2qyJorOS9fLlNOtK4X5Qr34alKE8GUPNdtAerC5MIQhYpdBTCOuP
         P8pg==
X-Forwarded-Encrypted: i=1; AJvYcCU0CmJKFw8PHJGHy7AFrwVUkxKs0o1HC5XHEYfWAFYgQydMuaKhLk1nWZq4weaC+Aj9n0NMMMqDxc2vNLBm0vA=@lists.infradead.org, AJvYcCWgoAhZ1XbNgJixIwDfwkHcAYY02EzWALrYlkseZpcO0u/SdgZrEQfT6Mv5RVQSdwIUJY/T+nwftDNIQOg//KSk@lists.infradead.org
X-Gm-Message-State: AOJu0Yzd9xGbHW9Jsp76U8z54sIrvUGJc3nO6VoJaY8QdO/Kke6jc3Sl
	IpQi8sOerxMwp0K/PYsw9LbNZEg2Q5sjIygbKAHILSNX39DosvNI
X-Google-Smtp-Source: AGHT+IGBr1wUlGKENgW2T4qdlEsv0NXF+yy19a1hMzR1S5d2615oD133Gws0Qigxu6ZZ1tEpCgGzlg==
X-Received: by 2002:a05:6a00:2394:b0:71e:6bf1:158f with SMTP id d2e1a72fcca58-71ea330c5cbmr7219719b3a.21.1729317717099;
        Fri, 18 Oct 2024 23:01:57 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ea333e94fsm2424237b3a.69.2024.10.18.23.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 23:01:56 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-pci@vger.kernel.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v10 0/3] PCIe RK3399 clock and reset using new helper functions
Date: Sat, 19 Oct 2024 11:31:32 +0530
Message-ID: <20241019060141.2489-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_230158_760895_7B6F0799 
X-CRM114-Status: UNSURE (   9.51  )
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

Following changes are used to reduce the code and used new
clk_bulk()* API d reset_control_bulk()* API helper functions.

Additional to the PCie core controller changes
added some new PHY changes to help improve and clean up
the code.

Made lots of silly mistakes, will try to improve in the future.

Thanks
-Anand

Previous changes.
v9:
https://lore.kernel.org/all/20241016114915.2823-2-linux.amoon@gmail.com/
v8:
https://lore.kernel.org/r/20241014135210.224913-2-linux.amoon@gmail.com/
v7:
https://lore.kernel.org/all/20241012050611.1908-2-linux.amoon@gmail.com/
v6:
https://lore.kernel.org/r/20241006182445.3713-2-linux.amoon@gmail.com/
v5:
https://lore.kernel.org/all/20240901183221.240361-2-linux.amoon@gmail.com/
V4:
 https://lore.kernel.org/all/20240625104039.48311-1-linux.amoon@gmail.com/
V3:
 https://lore.kernel.org/all/20240622061845.3678-1-linux.amoon@gmail.com/
V2:
 https://lore.kernel.org/all/20240621064426.282048-1-linux.amoon@gmail.com/
V1:
 https://lore.kernel.org/all/20240618164133.223194-2-linux.amoon@gmail.com/

Anand Moon (3):
  PCI: rockchip: Simplify clock handling by using clk_bulk*() function
  PCI: rockchip: Simplify reset control handling by using
    reset_control_bulk*() function
  PCI: rockchip: Refactor rockchip_pcie_disable_clocks() function
    signature

 drivers/pci/controller/pcie-rockchip.c | 222 +++++--------------------
 drivers/pci/controller/pcie-rockchip.h |  35 ++--
 2 files changed, 60 insertions(+), 197 deletions(-)


base-commit: 3d5ad2d4eca337e80f38df77de89614aa5aaceb9
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
