Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77C54C54F51
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 08:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=48KMj1cOJrKYOaEDC7X4xRQ0TSqVD+LrAoSFhebiQsM=; b=0FFOL+kvmHflBx
	gSKi6LLFrX8swNLUbPawci0z9uuGPtLDXjsOlvB4n3ePZq3qrmBLOhR16F0R141TG/1npaVtuGmld
	M/rmYUMkDd7NNE7p9aENu09IKhh7fUFZ7d4nEjWAFP2UO769Nc1ZJNSzJW0krWQ2OIY9gza4eOscp
	X9jJ1di8KLje7RxcCjuu47nd+8Tkd3j57gzLbTL2zfJLB+EAUSEQx+/4OnYC7OQKb8W76ALtpGJD3
	XVk6gpnyJF+T47RPCb5NH46Z+DrBzfRGwbd2hbR/On1OkgWv2UvQ3EM3vPFAJSC978qqxEAt0Pcj+
	UD7KKkimXa+CDewFObBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp08B-00000007I92-2Dhy;
	Wed, 29 Jul 2026 08:59:15 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp088-00000007I7u-35sP
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 08:59:13 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-c96b08cdd1cso429965a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 01:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785315551; x=1785920351; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=qJQtueKY7DcQgS7lfvQ6xWjiCToIdui2BYDzzrpTxG8=;
        b=M+PqA0Syof8n/grD2nQJIwwoGg6vlvV9iwCg+KDETBVgumqY7o7qYoTUNhq/M2QtnG
         aAau2GhfiWFBZjjWsDnawGwlG1GvBQk+PqGodjfftyRsv3wd9d94I5U3bRTdR4pjMBCb
         96fzvoe0IjEQV+lr9HyKXeacTE9OZon+wMGQjZkOEx08XKhBRoKyQvKX15ytxRKsV6FC
         TYBihFPLlSRj2AHm+vNNKa+cfFMbbZjwl4YvF5Z9kzxLRzFnKIBSBGnWQAhd4QMzfmRI
         1EIKo8geGEDzi+im07+xl70l5JQJyWqUBDATiaDDvkkAAPFepLf6K/kT9Zo7YIk49DBn
         fnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785315551; x=1785920351;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qJQtueKY7DcQgS7lfvQ6xWjiCToIdui2BYDzzrpTxG8=;
        b=AJPhOpJVxjswHSMGLo5wTOROhTbbgecereR9QHc3qiMSWia/4yN2t36AY6BwgDkyif
         u3ZWwnLkweXGJh7sGGWg6CeMxGG5hG+NfUkztKnZwYIwiL8E68QWH5iIMVH5xhRawGjJ
         6MTkwT1Rysy/RZLvb+LLeIRY5/Ni787ZSS3H98a2tfjTqcUx1f2t81gAHr2KNT9rlqOd
         UFZ9TqW4/ObzSOWjF10Ft7FgINFMtMv2NF4NHji6qkkbf1s6phzRfhYa9cmls6rOpqZv
         kmrdfzF4f+GtGUbnpL6o/0X1c7SKUVl09yOoYnzC0z3Tm/I9r1lxvCYl6/0rbFv5/DF4
         xShA==
X-Forwarded-Encrypted: i=1; AHgh+Rqb20IHdUEhyxZJQFEgwncny8RUzqlrzN8O9lUxY0QQarBzNWc/igPNYPMxTXdorsDk/4NLFU2jSlei5sTIOQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwX5pFvqLKs/cG9u6cFszDSgzVuhcKDqDM18th9uNzVjuGxZIXd
	65xnXGQLabWVUA7i3y1Cw49ZXCU3jdZgvog+4vMI+/ZPAQk1JwHXWriw
X-Gm-Gg: AR+sD11xRH/t2bs1nZy3Zo8RIB8FBXfSvZmXjne4b2zIpA0wwSmk5hpXcUScH/EHArz
	mtEKYm0BIIDcgM6E3u+Em1fb7CkvUl1/LrNOOY9hNJktX2H3DP45DQ8n3lT6hyB4TaB/bc0mBIY
	2zJHP0fBpET5C15lG6DyzKqGG/1I8nsMLn6zNp52cmJ5nTOXno9MC6ENf69vyByBipngXOjMTqc
	3qWMR07SrZKkyvGuu12Rbv5VaX+VYhDgchTPXadkmkHjMRAhuOYtuDbZ84+3/awdpqZhg6giqcZ
	stiwFerT7U2miWVtpXgJ/dDouXZhIwDcYPNWQnJabKDBOfnag2SqGtRUBC7UypPNk3jYeBrJCko
	GQscn/S+k7v82QFR2yBNMeFllyB4E2XjUbwx9Y+bzKEfWPCeShRXszqM93bvOjb9tyuommIwDEJ
	WmhAe/Lq1wA582c6/31VgZxDYPW83lJkpySdCiAs2q1kYHHfVr+YiLh49Qd6dvH0kH2qNZg2u/W
	PItjQ==
X-Received: by 2002:a05:6a21:7113:b0:3c0:f772:8128 with SMTP id adf61e73a8af0-3c8ba5eba0amr7062835637.54.1785315551272;
        Wed, 29 Jul 2026 01:59:11 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31504cc9dffsm8179352eec.14.2026.07.29.01.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 01:59:10 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v2 0/2] nvmem: rockchip-efuse: add write support with VQPS gating
Date: Wed, 29 Jul 2026 14:28:54 +0530
Message-ID: <20260729085856.226001-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_015912_768108_19C80325 
X-CRM114-Status: UNSURE (   8.74  )
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

Add RK3399 eFuse write (OTP programming) support, gated on the presence
of an optional VQPS programming supply in the device tree.

Changes in v2:
  - Replaced the rockchip,efuse-write-enable boolean property (v1) with
    a proper optional vqps-supply regulator, as suggested by Heiko
    Stuebner. The supply presence acts as the hardware-level gate for
    write support; the driver owns regulator sequencing entirely inside
    the write callback (enable before A_PGM strobe loop, disable after).
  - Removed stale debug dev_info() left from development.
  - Fixed checkpatch: removed blank line after while open-brace in
    rockchip_rk3399_efuse_read().

Link: https://lore.kernel.org/all/20260715110107.409204-1-hrushirajg23@gmail.com/

Hrushiraj Gandhi (2):
  dt-bindings: nvmem: rockchip-efuse: add optional vqps supply
  nvmem: rockchip-efuse: add write support with optional VQPS supply
    gating

 .../bindings/nvmem/rockchip-efuse.yaml        |   5 +
 drivers/nvmem/rockchip-efuse.c                | 178 +++++++++++++++---
 2 files changed, 158 insertions(+), 25 deletions(-)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
