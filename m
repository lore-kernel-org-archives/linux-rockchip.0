Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CDEDCD6E75
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 20:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRTZy6f/KWqJAd9Tu2dWC6maHaEIIfELvk/DBvE1gEc=; b=4FxQWpboGzHXCA
	ef6PqJvETSGQPxFeBhS271Cpx48j+tYBLNa6F8z3+c58i8AXaQuI8MhMyLDvxAXEILrjjW5oFg2aA
	cRXPrKCJSqolt3eQHVIOmIjpdZHWFAWNQxfekQbLYXidkxeWGUdPXgjqwxu0tP8G07icVT8V4scnz
	VTXbhoteVjF0xriBgI012HiQ3GSYjbRqmt2uHce0aYJXA7fHt6386fcnqJ/Z9E2LnqjmlqivNxFA1
	+OIYtp8+fEaRM00/a1O8B47VtRMhIGSulBohpfCMhlzrhGTavOg1/XFleMHObOsMjL+8tXjb+MIRQ
	7nr3eprqjwKsHZ0oGCGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVEZ0-0000000HFt2-3BYt;
	Thu, 04 Jun 2026 20:21:14 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVEYm-0000000HFjF-1zlA
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 20:21:01 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7e6cdd78fe6so556213a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 13:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780604459; x=1781209259; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BSjRTgvqZkDXu2MLipTCwmEQqCL/hU0TCzAIiZ1kK58=;
        b=fmbDFzsuH/rVTZVQKifTD1K2ZM3tLtqsV54siJqyU5+fRGZWEaaELmbqQClLjeu4tF
         /E4dtBrRPVWNBiUGbtASQWdEp46/ERqdQLAZek3x97nj6VHWUz4HXD2Y5KOXLhWmPBkW
         AqxrEQTg1m6IbdZNpcDk2z1cSv4ooa7ZETZwwGitSPrR9i45wgJtonU/xjw0VPEClJII
         pkK1lZYll+fYhXP7yu0CRK9B8o6WQQeCYSgqbdapKAhyWZro/igb/rdEddcol7yW9JWb
         3webvsGzCqwKjK9dvl/9vL60qi5FblW2+6M9DMeRf0bkgw4733d4qGUpsGQfTailyARQ
         ywew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780604459; x=1781209259;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BSjRTgvqZkDXu2MLipTCwmEQqCL/hU0TCzAIiZ1kK58=;
        b=s9SFGA2KPgZlrhLFYhmWM7T5dVsjLFnlFbekdqYZPj2vNVKpaDdodfoowEPSTi2H2L
         88dUrt4uTQAK6vhDIlxKdz3PHLQat+2oq1S6fqhiyCmFhKxrVfKAW+j73teM0fCnUO9l
         RtAx+fIBcHK+Z9qOHnHVhxj+QwkFn/aG01mX23vnCQpiOnEu+qKfHQHIqRlhkCp2/J1Z
         E5QqdB8BUlO6zF5A6GCGVSREvMkVukzUX7Dc//2t4D2nonQ35+c27djc7X7wQs53NW4y
         CwaXIZRCxlD97quxeQgnh9/V/Em4IaRDYR4j3OfLdXBgFbcIABc/hW2rfF020L1iFEgr
         TzXw==
X-Forwarded-Encrypted: i=1; AFNElJ+MC9iZWEWrOwyFjK4GgA89L5mIBoGhncePCfMPrblMjVYkrXPHFjt2L66T4uImkbpKpu0g9zGYJhgRF5MYZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyT5BVGzleue3eRrjHyEPMzK0dMqeZwaiAaPfd22v+50PUX84r8
	3UYmrBWRMNGfFHJCPHmBH1MTzgdivUACWrjIakf6+fsb/gE1MteJYHEa
X-Gm-Gg: Acq92OFh5zMadauOquJRh1kIkm+auv7Hii22n605h0QOG72TIefmGqwIUWdc06WXNLX
	k5krcfZf8g3FIdqAjQMzQjl0ldkWEuD27aTQVg/mtfqwWFt81VHXiQZmcpOTPIOZlqLAzYuQj/C
	PU2HqrbDmCFjdJ6mBqqRCGrGi0viGsijGmFWzotJfclBJ+58WYDL9uPfs9JNHnLuXSm1mh3YZGh
	SEX0ABa9Je1AsQ19q28fhh2XqitZoQjNzqC3qn1tvd67Qe/qMUdhB2ZjC2gyeicmE0EIt/e0xvv
	/6z/poWzrXXs3dBLf2BT8CWO2pBEu9U5KMcTNc7CawlZHijHEulQWb55SkyFZBgopJAeS0irmNJ
	BvzBAVsfDgkKtZHuL5+3VYYWB7/1oxq9qM1UtRU+WaoBjvbmr+Njhq4ITrWrzkIpMJbnpFgwfsx
	a55sERS/tMPovOLOEX/j2xjnvSDS1ZPFQ=
X-Received: by 2002:a05:6830:2781:b0:7dc:da80:42b8 with SMTP id 46e09a7af769-7e70ca13f4emr137409a34.18.1780604459351;
        Thu, 04 Jun 2026 13:20:59 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e6e796c675sm4541800a34.24.2026.06.04.13.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 13:20:58 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V10 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Thu,  4 Jun 2026 15:18:31 -0500
Message-ID: <20260604201832.60656-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604201832.60656-1-macroalpha82@gmail.com>
References: <20260604201832.60656-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_132100_607602_7F28F6E9 
X-CRM114-Status: UNSURE (   9.83  )
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

Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
was tested with iio-sensor-proxy and reports correct orientation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 8d906ab02c5fb..b770bfd5268d8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -871,7 +871,13 @@ aw87391_pa_r: audio-codec@5b {
 		sound-name-prefix = "Right Amp";
 	};
 
-	/* invensense,icm42607p at 0x68 */
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		mount-matrix = "-1", "0", "0",
+			       "0", "1", "0",
+			       "0", "0", "-1";
+	};
 };
 
 &i2c3 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
