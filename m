Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9400C369D1
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Apr 2025 03:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcndFoNy1iMpjRVEp9CDJ0miNZVljUwKo8Fb+3BULcI=; b=DVVAedS3YA3PfO
	AEVoj5/SPAvakK0BF55FG2jmr7+DUSNJMHrfKoOLVDtKhf3dWN4mEPXY0M4DCDrULezThIPT0Kgue
	stNGDsQfzhmpEqZgGKNAK3jiVp91ETQC+JePUldBIh/yn2mXdLa8F9R4a0LTbs4sQrjy3acdRpORR
	+56cOdZ2xdk28pvL8MHHKcC3sUW5VC44FAWf3ZtO0xT6Ofypd0ZBdjZG1MeTc52UZp01wox0d+uCE
	hGd0qh58I9U0oLbyX0CaOTj7gWjsWG8gsuuHQtmxQyr5ugdQAlGoazrFxab5+t8GdNsIyE69yKbO/
	eaPQiscCa07M1HzMe0Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6LoV-000000029mz-2Iun;
	Sun, 20 Apr 2025 03:57:51 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6LoR-000000029mI-1enC
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Apr 2025 03:57:49 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-ae727e87c26so1990823a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Apr 2025 20:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745121466; x=1745726266; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d05aik5hC6LDlC1wwpArorOkpaXXSmFvs4JQTlxeA8w=;
        b=OTAQ+l+uYmQS9DQo6mcspNjiyMsTt1JpMl/zT0B/EBQaRTabGRmkepdBW6zDPpNR6K
         pEkYvUsJQJtHoveIF1cVAC0oDOGG+OOFApO98tYhRlpiWgt2fGCFVWsk9AQqxT/N8W2a
         4Tw/5e9hl8JrirRaFtkk51VrNIgbMl8KjL6a4ZVYTHKwZcwCTGDxSs6T6uh856xib0dt
         oxroeR8n6ONHCfQJM5lBUfVtyxUEHRjKQ6LwfMabwgoa5R9i/MPaMDwktyhLMuNalpEd
         +v0Ssa36EKO/4wf9UpbZgbSAdePB+PFMoLzc2JQUOe9A3ZxU1pTds9W2EBgjwK2Ulnqv
         WgxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745121466; x=1745726266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d05aik5hC6LDlC1wwpArorOkpaXXSmFvs4JQTlxeA8w=;
        b=BSvtbeLOFs/6CNSIaUhZ5u8ZoV5E8hDzC306EmaMPz7cunjyVZmsg/9XDhBa3muCOn
         AWFPSRn/IO0B+NcSiFEGW5G2sXJNiSkE4zpDOxiWk7IWPiJWFYqxSIqFKUsA7vqRuB26
         uMZdulo+Mh6gNQAhwZglQMViC5SNQVby3l8ZDDKzS/7zygYTgnJj0+sYpDqM6R5sAy3e
         cxktiyKOD0Mieh4BnZKk3POf0En9D/ZzejOBwpgvEfstCXVLh012EXeVXPkO0SuY3DNJ
         LNJfjc11GmWq+o8FqXeeElbCL9PvwpAHcmKXTg+xysvqkf8sC0yM42Excsho712rhroa
         SZzg==
X-Forwarded-Encrypted: i=1; AJvYcCXK4S405IN6FAy/HgMCApIVpyBrOu/8sgEQ1hhj2VbSrSoM1fWnV2tZZJ6iSORlDxI1v4xrTLPrrDBP2jCzEQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxC1nzIjWpmSZ8eLsdROxABYixibZ3zsE2nkxlxJglGvPd2g5bL
	6ff//BFeukQcmPjNt9bUg8jNQiPZx3x7kgyp+D3BvhthNmyU6+k6aCrO7gWXqw==
X-Gm-Gg: ASbGncuCfaEVIXGXMGvE4n0wXnckndP91GVF9v8GQf4WUjRolExzSH0AneXzrjsWDFy
	1ARbhSBNMo116BsqugqV+ruOjZurI/X51dxR43bgVBrEdZ4STTDJ1jKytIQUamkcKtE00nZIPxv
	HC3fc61WZHe/Y1X2ThQf2R7fd4ACnooPmM0LPjDGbwc0TRi69exVbKvjompdo2K6wdrL0tDxoLg
	duB7u1NJCh5b67t4mopYzeMYPq6/NCzKMSPVddtp+QHzgDnGN30cKFTSymPMm4g83wk8p5bMKcl
	sq43fP/7yVfsrqjY2Wbg41Fr/RVOLV7nmeBZiE0PZCghnfXgp9Su
X-Google-Smtp-Source: AGHT+IGqRmfFnfaKAG1NQHv5VKFPsQHr8AgFIidnjypNgyYAdT7Q7hhn0ht2DNSI6WuV2LK9EtuJpQ==
X-Received: by 2002:a17:903:1a30:b0:224:1074:63af with SMTP id d9443c01a7336-22c5360c9d8mr122251965ad.34.1745121466025;
        Sat, 19 Apr 2025 20:57:46 -0700 (PDT)
Received: from thinkpad.. ([36.255.17.92])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50eb4ba5sm41382555ad.120.2025.04.19.20.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 20:57:45 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Niklas Cassel <cassel@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RESEND] PCI: rockchip-ep: Mark RK3399 as intx_capable
Date: Sun, 20 Apr 2025 09:27:32 +0530
Message-ID: <174512144432.5058.6969526836746985984.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250416142749.336298-2-cassel@kernel.org>
References: <20250416142749.336298-2-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250419_205747_452494_A8B8EC36 
X-CRM114-Status: UNSURE (   7.79  )
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


On Wed, 16 Apr 2025 16:27:49 +0200, Niklas Cassel wrote:
> RK3399 can raise INTx interrupts, as can be seen by
> rockchip_pcie_ep_send_intx_irq().
> 
> This is also in line with the register description of
> PCIE_CLIENT_LEGACY_INT_CTRL, section "17.6.3 PCIe Client Detail Register
> Description" of the RK3399 TRM.
> 
> [...]

Applied, thanks!

[1/1] PCI: rockchip-ep: Mark RK3399 as intx_capable
      commit: a7d824b2df0d8b9e19c334594cdbffab97ff8d66

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
