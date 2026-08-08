Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B59FC5AD2B
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Aug 2026 09:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8bCad4hVDphkiIfeaq66alaSzJ5q/BuL/Rzq4HgD4M=; b=4cGaZze7hJXyRj
	oYrAbCRNwEUcAASsXKe4OMcuQvng2TIcU1SvUddZGhKkmH0wEdtJd2IqVAqJm1RxWkRLYfOQHP8qn
	GoJZdmoe9iW2l6L0B/rIyabLcOBc2tC5NPBHKb2JtyFbn0/b2S54NLic/3Syx3+EVbwPoq2u9dxt3
	GJDpUwhOo6AZlY8/r4NQw3JZMTO1wsp+U71qz96/5x6C9iskz/IYl1h8YdJCPCx5xcja+I3gmPJY4
	aXhE94p4ntWtdKGlr4e/0sJRd5z2MiaNgJOZOk2I6LIZP+EnbP7xrNFeOKHBRMfjCOqMEZM8ubFIN
	yS4D4GThiBCp8lBHWOOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdcc-00000009Eeg-1asB;
	Sat, 08 Aug 2026 09:45:42 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdca-00000009EdQ-0Qvk
	for linux-rockchip@lists.infradead.org;
	Sat, 08 Aug 2026 09:45:41 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4957952e0f8so323935e9.2
        for <linux-rockchip@lists.infradead.org>; Sat, 08 Aug 2026 02:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786182338; x=1786787138; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=O7MAb3Uu0LO6yvv+qCiCK5kQU9lkaEhyw4ok7BL0cqY=;
        b=D7Us/c12tKs3k/Faop+3qjklkbN3x6o8Et39AR1mI0B4AGTRbWceumomM663Tqz25G
         FHopgltZwEe2VOKKUprTYhL9WkbgpwReeoxo2hc9GaLi2VPv+UclNByslqd1+N90vvGj
         BpAP4CrNagaAxdAfM6v2cSRZDP8gJxE+IhT4ioVz+vCKVxWQtVHB6G3g0buApcnnQnFE
         rYMbCQLwTKToLk/tTMbqDMi180YGilZMa3LlmXSg+pbTqSLS/XONpmhNrz/G3k2twvn+
         5DqXl9+0bQjfPgkBpIiZ4/Kc9BFNVtt5eZ0xdKYwHZxwfGHzQGm0LoPT0Nt7CvcuwQdq
         V3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786182338; x=1786787138;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=O7MAb3Uu0LO6yvv+qCiCK5kQU9lkaEhyw4ok7BL0cqY=;
        b=MBD3O5jhrZyJ7J+fl1pfyv2W4rxf7xcH8+JbBFiDU2BSRjZY/xeAcValbqJa+UUYyR
         xG/mTdRqVI4DP8oUODk/OdYWgmCjttKRMKRSgc0brLmWI7eUV7otwGaJ9FV4nMrWmIxA
         j/R4kFSdfRWW+UBEdfqaMEynvNTjFkYEklBHmscd85k+PWoSnXHeJBiFVDKoPKAxirjp
         w4UfyQUhpthaqg34h+NczR6yz9wSExD3/AKLeiTGlOXLAwBMPXAnU//2nkWW14yWLuLC
         oRMxRhKZsfoKMTssUMtP/dUEYe3BaNZrf1cNMxr1xWbZD61aayIhfv+cJ8G+8vAqFirR
         0SlA==
X-Forwarded-Encrypted: i=1; AHgh+RoPT65q3fwF/qQXOC6Mt4blVd+fctWBpKiZkPjN9PdD4lCjg6biSs2xT9NCgkRJNIy2UwyzE40iohIGQsXsfw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxaMYXdZptblV80FuLVvUGUc9WASvdhaz9/hqQmymxf4ma/h2Kp
	K3TILGu8F1HbXy0PgtxrsL9lSmQW29ZrwtdENmWfR3yFSfuYrd9P8H9S
X-Gm-Gg: AR+sD10jBnRKDEo/Oa56WXRVTh/MxAYdllQM4lIf8V4HHsbUQNqTT4cJhHOtDf5vfzR
	uaKsKlOt/XF5DIooQpMqYjunE9mFK5XIF2nmy6RHH9dbvDYOR+tj7YwzpLV0ciYHtKRDFCbrDXF
	6leFsT6qmzH1DFLUIqJExoS6SXsRTglyQcth1Qf/h8iHFvM3AFF8JUxS6x66h0Wb5wQyQ3SH+Bu
	Zx/zqGZeCq/m5e5tHVynXzcRxcj2kXy6fP+ZNbB3AfIUfo5yT6pPyZjca9KM9BEMEV7cV+LGJkz
	G1C8hE0A3i9NLMLI4m1zOGLJrqBgFdhrmDqvCFTEHz6WFDeG9EyvPa3VyW2vGuFVLRtD/GpXrw2
	V4bMiznBUqv+VlQ7JEjeS9WrXRHfZQIfbQ8okRryE27xl1sHizi/fu9wNRka49YB4aNQ4kUm9LD
	cqyhDj8DUhoUfp1KwXy3C4ASFyXQXAH4ckB1CZWFvAFtw8pgHYKijeR5ZW93lIt0rYTdNOeOjNR
	WUBUqozLSsQe64oONTkzWx38vvxPd/sBY24auKC0wSuoE0sSQ2FYL/99uoyBq+2AdSPMw==
X-Received: by 2002:a05:6000:290a:b0:47f:7526:5a0 with SMTP id ffacd0b85a97d-47fec47628bmr22114967f8f.0.1786182338193;
        Sat, 08 Aug 2026 02:45:38 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8E20009911270F4BEC2300.dsl.pool.telekom.hu. [2001:4c4e:1b8e:2000:9911:270f:4bec:2300])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48002145966sm12913518f8f.5.2026.08.08.02.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 02:45:37 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v13 00/35] phy: rockchip: usbdp: Clean up the mess
Date: Sat,  8 Aug 2026 11:45:18 +0200
Message-ID: <20260808094519.8417-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_024540_159097_0C305CCC 
X-CRM114-Status: UNSURE (   9.56  )
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

Hi Sebastian,

The Tested-by tag is at the bottom.  It comes from the same test run
as my reply to the dw-dp v11 cover letter: Orange Pi 5 Plus (RK3588),
drm-misc-next of 2026-08-07, this series and dw-dp v11 on top, plus a
local board DT patch that enables DP Alt Mode on the USB-C connector.
All 35 patches applied without conflicts.

Scope, so that the tag is not read too widely: I exercised the
DisplayPort AltMode path only.  Modes up to 2560x1440@144 are clean at
the stock VOP2 ACLK rate, and 3840x2160@120 works once that clock is
raised - a VOP2 limitation unrelated to this series, which I have
reported in a separate thread.  I did not stress-test USB3 host or
device mode, and I did not run repeated hotplug cycles.

Patch 16/35 ("phy: rockchip: usbdp: Register DP aux bridge") is what
makes dw-dp probe at all on this board; without it the whole rockchip
display subsystem stays down, HDMI outputs included.  The details are
in the dw-dp v11 thread rather than here.

Thanks for the series.

Tested-by: Igor Paunovic <royalnet026@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
