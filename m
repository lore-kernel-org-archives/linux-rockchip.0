Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCC5CCAC5B5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 06:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=50GpwM68e1DlnrzVMFX3yE5eT2fBUNcmucotqQDqqas=; b=4a2e2DcrYZhtRG
	+gIZO74uGqL0U/eAuKs5ky6hfPh+XyC307RNC5mS7cZQyeOqR04rynpnL/bapIYbGaC+w0pTQp55X
	AAMKxe6sG2jCnwOboDOftd1DPyxdsKIVYinz1wur/+Zxwl+OuyHXsXwj6sz4a1ZhcVP4hwdca1Vc8
	rspRvHph2KQjYrOOxZ2SoXHX7dl8qV/KTZdMmt/BdxYsxeBmFrhBRgkHl2mjgsoe4AUrkxmKmCTH0
	ZVuk4simWlse/2cI7gIen+9vK2KWJoJ+nuqI81DB7JF1lYpQH7AtIUeO0G5LSV1skxGvBZfAEllIC
	wUxPOLkP7x+cC1BbISlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37pI-00000001Y5y-0O90;
	Mon, 29 Sep 2025 06:57:36 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37pD-00000001Y4n-3r4L
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Sep 2025 06:57:34 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-781206cce18so2321707b3a.0
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 23:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759129051; x=1759733851; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uRlIBTJbS5dsUVU9BT5fMMctePqeQfAjKve/Q3RtfIA=;
        b=AIVuczqC/NTztDAIPoCKGg3qwlTsgurjjVRYZkD2mHRiAJNIMicNDflxwdQxE/vjuc
         cEuRqSCejccChtA30/JQKmbS6zzSbpUshetA8s3LWggYfvaiTpHeuhGVP39FlQEtw9Uu
         k9Df3lM/81pS1jWVTWJaRy3GWBlqTHRu62crV5YPNZJMXQ1eRtcQ5BCwYM+IxSjV9StP
         d5imYancS1m8IOoCnegEFdfm15RFYuIZUR3Szy93idaAh2VQ4ui14eMsulxayYJzTGEW
         Kf8hTDUq8z6yp4R4ihUBTOp5ESBgZuDPWrHfjWFW5rS9RzDxAYwHD1XAIDfMJrlu+VRx
         sJ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759129051; x=1759733851;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uRlIBTJbS5dsUVU9BT5fMMctePqeQfAjKve/Q3RtfIA=;
        b=iUiSpzkTPSvh7dRDg/Ow7pjf/PWqthxNaNRP8zOHK668vi6wm1GzA6j98wwggT7T2k
         eMIzWFFFjgeUeQ0KOhOkhBcetgG/bjNJPyzgoWhfXqwcfIPLqFPalzoOBg5nQXCTw1Sr
         9S1hg2tDR9/hSer/qiMVzmxuAsleomWmo3L63d/5r1oMTvkS1Kh6kU8mxbmQDgvQUkU8
         pXTUbo3/6ddX1NXAoqSf8T7913XxHmwVQqKCa3wmBIE4zChgQjbA+0Fz8JBLfHPTUm4p
         /HJQqbsMMkGg9EiuV8j+F/tRXPj3Bt8kVnrcGfYDX+SFz2l4gs7v+TbHZyz2OAEoWyr9
         K51g==
X-Forwarded-Encrypted: i=1; AJvYcCUl6TuoqYy6XQmQY+R2ok1fSN0Mkbt3dEeXnKgor0f5u/5apIUWea96Pyp+l6rwhkVcKrxf8to7HPEZBZul0w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwIKa5nexXrDnNAJKxFRDGXjecl3oHntn7Q+BUCc/9zLpWrGW/i
	b85ux+H4uVg3W3NoaSSoqGxYVcGTKfKIOQFkqrOZDCHJSXvfBJU7+lbB
X-Gm-Gg: ASbGnct5XjbMNsK8fcC7cV5oZ8LaEMBRYbNSBh2K7w1hYmJw3aZ35bmfy3kjscTAssM
	oz2DnBjDTVafSzw9+an9acGzY0/L2503p0i7EnzxLF2Cg6uz1kqv34Oagz99XfyFB1CnOOHGkZQ
	MPgqoMnRadu4Uu0OfnNZt2JMBme8Ue7iFyCeTJvNBU/b+jPGBs0yog636o5+kTUHGGSIgUwoiuy
	u5xk9u6EY5xojONnXLW0q0fjvD23eGgiQbME/l7MxwN20odlToDWq2F/ALEK2dR1yVKwUmTcv+e
	gwufs6gV6FQP3jVMQlDoOjxL4wXwejAZH3tBLlaeovqlnsZjEQUWr7KVtnCibYtLDP6oxFSARFE
	a7dVi3upXXJ9018eQSyCnAMS4N6ubKxCVra7kUYn/aCM=
X-Google-Smtp-Source: AGHT+IHnOzVUSxV0rdJYyHdNFITwaxFEqSFhQIoUc3A0a+0YDe6RiTgSYuqOECxHlGbYNdZCP3ruxQ==
X-Received: by 2002:a05:6a20:7486:b0:2c4:5793:3419 with SMTP id adf61e73a8af0-2fda3a10507mr8690061637.27.1759129050776;
        Sun, 28 Sep 2025 23:57:30 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.251])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53cac77sm10549595a12.17.2025.09.28.23.57.25
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 28 Sep 2025 23:57:30 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
Date: Mon, 29 Sep 2025 14:57:11 +0800
Message-ID: <20250929065714.27741-1-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_235731_973330_217B1AE4 
X-CRM114-Status: UNSURE (   8.93  )
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

LinkEase EasePi R1 [1] is a high-performance mini router.

Specification:
- Rockchip RK3568
- 2GB/4GB LPDDR4 RAM
- 16GB on-board eMMC
- 1x M.2 key for 2280 NVMe (PCIe 3.0)
- 1x USB 3.0 Type-A
- 1x USB 2.0 Type-C (for USB flashing)
- 2x 1000 Base-T (native, RTL8211F)
- 2x 2500 Base-T (PCIe, RTL8125B)
- 1x HDMI 2.0 Output
- 12v DC Jack
- 1x Power key connected to PMIC
- 2x LEDs (one static power supplied, one GPIO controlled)

[1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---

Changes in v2:
- Change deprecated "rockchip,system-power-controller" to "system-power-controller"
- Link to v1: https://lore.kernel.org/r/20250925055906.83375-1-jjm2473@gmail.com/

Changes in v3:
- Fix typo ('status = "disable"' -> 'status = "disabled"') found by kernel test robot https://lore.kernel.org/all/202509261328.Grjhp029-lkp@intel.com/
- Link to v2: https://lore.kernel.org/r/20250925092037.13582-1-jjm2473@gmail.com/

---

Liangbin Lian (3):
  dt-bindings: vendor-prefixes: Document LinkEase
  dt-bindings: arm: rockchip: Add LinkEase EasePi R1
  arm64: dts: rockchip: add LinkEase EasePi R1

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-easepi-r1.dts    | 692 ++++++++++++++++++
 4 files changed, 700 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts


base-commit: d0ca0df179c4b21e2a6c4a4fb637aa8fa14575cb
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
