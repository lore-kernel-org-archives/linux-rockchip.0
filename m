Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BACA6EE801F
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Sep 2023 16:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=890I6m/UMzO+3cB3ik9c4ZKLHQ8Pz8KhfNN557RIZqc=; b=ytdGfKfxg07h9k
	1+79vXhR2J0lU5J4h3veK+sKqP/z+d7HXhG/fyDz4/KLFQ/YUzQ9kiFN5wLy4Jei3Ao58++oJZr0D
	Hj/ge5AhBOmh/rcmO86HbhgXi4xD/uYG682WVNMJi9MuVgoiKX5HencKijiHUimxZhFcBODW2HgPy
	JvXYgYpac/9KE7rfilYIrW2mGK7OBCtOkSIRdAXvbpJ1JFrUz8X4IC5ciIuAH6Q4pEdV2zWgh/bpT
	LE+x4I5SO2MR56NHoQaHqd/OmJekLhV3SiQDN/5yEWW0+ZK3tINCSkP8XhPnquivw6BdZl3ANI1Av
	YtmqEsg1w1uT8kmYyxvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeeYe-00E6Em-08;
	Fri, 08 Sep 2023 16:42:12 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeeYa-00E6D0-2d
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Sep 2023 16:42:10 +0000
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-5732481b22eso1387872eaf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Sep 2023 09:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694191324; x=1694796124; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VQmEH2RUeAXXFD59FSUnwttQ34B6ik0lf7mApX067Aw=;
        b=FngmbxbIRJvxdPMt/4Bp1WgQdXELysT6aIzWlvmH/0TWbJTGv+6nGwk6f/IqMPedOY
         /dR7Sd1QQhKHm/fKa7q673QPulTIAVO94C0xxpbvPAfhvvY2I6GJW+7hiUCRMqiFQuGN
         nd9mg85JoDA4szsW67pCY/n9PSs5jIO56YisALt8wK52B3W1U7//yYtlCR1h8ViJgXmP
         lRmWMj+Oj09NrqnJTiXDNtvqjWwfEuZuFDgA850NQTPIVxHcSatqSloL7WccgWBJZPHm
         q7zs+r74+8unhSjmQftoKC4Nu/3M+Vi5EyHr4jO3bPzaNNrPb8DM0X1uFqxiJozGubx3
         4CSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694191324; x=1694796124;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VQmEH2RUeAXXFD59FSUnwttQ34B6ik0lf7mApX067Aw=;
        b=Tzw7cFW5SmsnfTNtnCMwPHMsEZITDrKa3VOAyT7UJe0JIaL0OXe4M8+DNsH+E3aclj
         t6necK0EI+lAQ/k7Crv9rMUgvQD2JQ7ZO1/ZdZeopOzDhrOiASOyce0RFBBW7EaJs6Mu
         V0keXEnOPhyFeCeFG/caCBV57xmXvWwdcX3SCABs0cSOhwyF1RCzoQZUfnoc6b/UVtch
         qhNzkUzvrjgKQLlx5VQBS1W0sxLieac2yQJ6qjBAMPENXaIPaR6OZAgNbJYPPlwqT+U2
         C4KYDybtsPKgdKrB0WItDscnOFUjSSGo+NB/+t3KMOSmQLywzc/oc9Dgm/FH2njae83G
         jHVw==
X-Gm-Message-State: AOJu0Yyed4ZbSlG2opfTf0C8J+QVTUcYg2XCKt9LW0R7cKMVEmybVjqY
	vKdL2YUPcEjuqh2G25sKD2A=
X-Google-Smtp-Source: AGHT+IGSumNmB0sVbdzjIQNxRbxeSCzW7y1kgY6/94aUZ7liFg79JTMRE0Qa+yvXOOwKE8x+lN/F2w==
X-Received: by 2002:a4a:d291:0:b0:571:28d5:2c71 with SMTP id h17-20020a4ad291000000b0057128d52c71mr3159422oos.2.1694191324308;
        Fri, 08 Sep 2023 09:42:04 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d14-20020a05683018ee00b006b8c277be12sm839485otf.8.2023.09.08.09.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 09:42:04 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add Additional Functionality to Indiedroid Nova
Date: Fri,  8 Sep 2023 11:41:53 -0500
Message-Id: <20230908164156.2846-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_094208_859179_87548F05 
X-CRM114-Status: UNSURE (   8.58  )
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

Update the Indiedroid Nova device tree to benefit from hardware that
has recently been enabled in the mainline kernel. This includes
enabling the PCI Express bus to activate the RTL8111 ethernet
controller, the USB-A 2.0 ports (USB 3.0 still pending), and the ADC
controller with the boot and recovery buttons.

Chris Morgan (3):
  arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
  arm64: dts: rockchip: add USB2 to rk3588s-indiedroid
  arm64: dts: rockchip: Add saradc node to rk3588s-indiedroid-nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
