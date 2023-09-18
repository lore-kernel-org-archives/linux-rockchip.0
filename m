Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C59F7C46CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 17:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uLLvDNGOD3eatYMYL4hDWdKDASBwyWbHcXcA55c7KQQ=; b=wLtoT0KE+gIfUn
	gQcOS8JznaQIeyTObEbOD9kih9Yu6iX/34Ah9IE2pa7be+F0jt6buv3nHO/tk2djdsU9+X4deayYI
	F4zie3K3NoZj1GtXNKOAwRWKDhP+OJTwaij/JfXleSbq8QGQ/yDDVw4P5B4XFj6Np5ghhPClDef9e
	x8p20UkTWKrrDXtdUlEoWLwh/V8gBh7G+fSiFeWX6rxiXVrk3s7tPFZlQsYqCpZJKmAo6XtghE99K
	KDckEhdmoTOd4P2nxRjgyBStpRn8OMalSbbN0vB8wd2jWfG35b7mX+oZstgSVVWqSaswGI9y9KQw7
	etgBsSRIt+3YyyMFyECw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiI7P-00FzjL-1W;
	Mon, 18 Sep 2023 17:33:07 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiI7M-00FziC-2V
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Sep 2023 17:33:06 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6bdacc5ed66so2606439a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Sep 2023 10:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695058382; x=1695663182; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EZNkvnrgYUErV8fZNN98x6gpuYSKrtt1lgRS6aYyhUM=;
        b=QemuJJZoh0kC1GglNm+V4Y1RH4HZcUAY7LX+jGOZm4jL9Z6Djxi5eK94b+774JNlhU
         nPH7s51nqJW1VyNU+brxdG+D+a+lNBVl+vrt4GWL1wgThqbJCiwvj66/SHEYALU2f98a
         x7fBUrffoPxFdNcnH/EhjNIomL1z4Qjv0YeAq1fEGIuOkPotmzPXSYcVRzDcz5LCZ6qN
         dAPbIWdn5Y7H7Q4uvl3BA0PFobWOCYrGu2XttdkaQT2NzgA5L0J4Fco9eZQAQFaY6MRT
         iigC+pG/uTaMSTHaL6iYC1qH1tBc221KPoAp5HSwihzbC2hDF246fKCVb6NoB1SWewZp
         5TxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695058382; x=1695663182;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EZNkvnrgYUErV8fZNN98x6gpuYSKrtt1lgRS6aYyhUM=;
        b=AE7Wp7z0k8aQoL9HMVXWMof999097dzfn4oFaFMwnm+TO9vzUbx6pzgRNhOWlorpcO
         OHzYeMYVX4qxqV6kxuifHew1WTLYuFwDTsu0dBEz6v8ujHodYovZocj1FGvfD/4t9p3Q
         +ixMwQt2J5EV9bJII/JGTg7gC6lJjheIRfenMj8onfCB31BH24L3F6rqkujbhTpTlGde
         OuswDTjTKAOxls6G01lhI1HW+Zu13CWWnUka9Ev764XntfIbR3J5EaofKZjRy7+AJwbE
         Ba67eyCTmUcfWWQ/6tuePB1NJEPjKqxQ3K6hSB8ijAQ2uRUuGVIXHGyK8YpBpiUDYFRj
         muEg==
X-Gm-Message-State: AOJu0YwxRy02EwZqAWnh3ZXmnDlZpOmO/gph5Sw7HqrXJlvN9MfYPt5J
	eQ9+rhhr+stGqlwEGuDXwoo=
X-Google-Smtp-Source: AGHT+IG31rWsXFqqzyCE9f0hcS/rrnLRjkI9ljM28b5DA3Y1z5cBJrLQnme12QfS2Oo+qUXzI4YDhw==
X-Received: by 2002:a05:6830:1544:b0:6b8:7a07:b312 with SMTP id l4-20020a056830154400b006b87a07b312mr203669otp.10.1695058382617;
        Mon, 18 Sep 2023 10:33:02 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z5-20020a056830128500b006bf0f95f702sm4315755otp.64.2023.09.18.10.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 10:33:02 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/3] Add Additional Functionality to Indiedroid Nova
Date: Mon, 18 Sep 2023 12:32:52 -0500
Message-Id: <20230918173255.1325-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_103304_840246_91590D48 
X-CRM114-Status: UNSURE (   8.87  )
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

Changes from V1:
 - Correct node names for adc buttons.

Chris Morgan (3):
  arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
  arm64: dts: rockchip: add USB2 to rk3588s-indiedroid
  arm64: dts: rockchip: Add saradc node to Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
