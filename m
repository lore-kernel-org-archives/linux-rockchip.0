Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9708C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 May 2025 01:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mE04Sk7J27jE7fiKnfSuFqd1zvINfTYJm3oCK4dTbwA=; b=tcNXnZlDL5vrKP
	kB7r6MBQx8Nga7YPXuciwVV/KpMBdOJDxIh7eZt2NFUOKrqKt/v2m+X9SJun8eSN4s3SOekdS88Mn
	Nmngf0m2Wa02YQT85tz08qVsmtlaRL8MNJS7F/K+o9rN+VCTtGs+X7XsfGT8sYhCUXAWrM/EwxsEE
	vRSs3b+ThPVFs++LopjlXHffr/xfF/4LjtCwfbiaioXZx8QQqVmYc0ZQr6FU2LGCYYmSOU69Hi+y4
	9Rk0HWrVmstq0CCdYnjShsOUlEFmFh/SD6FaYRwhoMaGk8yGCmUkESm06vC2+Q+THVIQEG7RduJIS
	sO75AnwR2P+e1694+TzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEePl-0000000B3de-0xdf;
	Tue, 13 May 2025 01:26:37 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEeKX-0000000B34y-3R43;
	Tue, 13 May 2025 01:21:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1747099212;
	bh=sx0QPXnSaLIf4F34i9zHng6KtwZzILwK0rjOsdgpCTc=;
	h=From:To:Subject:Date:Message-Id;
	b=Co1n7HhMer8FJlSY9wEQbv7GPvFZf/ZJmY5ZKsmh9Qcjgh3ilo2+j9VAsQ3o/IZvS
	 Jw+RjyP1i8c4Fpj01luMmECgDyxgwWx3Y85cA7ffZKL8s1cKKhHn+Eu+/BkONJsNbo
	 EG8GAt3qjwWro6K8biikU2bKEf7paevU9MmpTOWg=
X-QQ-mid: zesmtpgz8t1747099209t919a02de
X-QQ-Originating-IP: 5vhkHeA2dWXXDt212fbrUzKzkNBcuE37BFyAXXTQglI=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 13 May 2025 09:20:07 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14605522553798699493
From: Chaoyi Chen <kernel@airkyi.com>
To: Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] Convert Rockchip CDN DP binding to yaml
Date: Tue, 13 May 2025 09:19:02 +0800
Message-Id: <20250513011904.102-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: Mutteg8H72qD0e3+xNdYv7CPv9n3fer6jJ/f7nyr3mA6gEE3MIlXi520
	W5LlOfYqWYpn83CH9jq8K44RjnktcHg/gtM3ajPpMG0zZFf6/nqgcPcNLsPUnIConEgmiQa
	1qXAFoTIuYyBP8xDslCeyANlIveCSBWA9cCck0jbSh2TBy+g5+enQbYsMkq9po83IKGEkMY
	/R8i1mZxWw1M4H2uUHMKXyhmAnRCfrcsM0lOvXRkzAXaa65kdT7qjz1YVcHQ3+3bW/MDrs3
	MqHNqs3w9y/Kd+jsMHa012iejgdeG71tvZAThtGjpPFVuyZspJ34o199D7Nnxslu2VRa8Vi
	Z4/g72BbNNc8bJpSFvYVbWK7t0Nk35OqPOEzQf2+J0F+uqWS3cxpF9qmPkg418dqBiPLkpi
	qZpipCZgi95yUCepWxPl9zxGLQNA/wVmFKcXLf2WjFZrNpPofuvD04gmmezscWMlS+0HW/m
	DrUhmDGszSGHQm6YfgAYFc9cXKwRbFuRdnCBVPKaT+gvadkSsy2TFLKzg1RRCSoNJ8pO4Tf
	tGhRzUqK/R+ijswCB1g5ZbS9AElbCkEtDIzjCa74rM18LwaYew34th9Zy3Kwb2Mi6MU22w9
	q9IKgBD14U93uuqPwYuWUyG6MgjCEAtiT7jGWyVkYtOuuJ90jLqRQW4Q0fWAHhUrhBnD+My
	l43vyZ0LlmzFGrXliisEJ3p/h6xRK8Uply7Int2MunJdeUsIccgVzuep7vDu5IoYaykTb2a
	80+xs5VuEb4X2cJgZ7MVYiPoqG08VnjkVP/LaBTgJjtXCabRmqF6wImXSRIwDBFaq1EBtrW
	Uj5NkcRln1pwZj1yuU5rK2r9N0JlzoO78FzKk8TSS+fQu4r7QCv9yC3BzXziji1LJHk+fGF
	gwdJZrnSDZeaJjM57Jh/zT4qPvBfKx597YGU3pRSRZ5Jl/xkDVG39KVbZV9DFiU+PxYizbH
	XWy0Wb46ZfJoomwTNdzn6PYX1K6xmH87WmmhUqztYAHKoFw==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_182114_377278_C2D46AFE 
X-CRM114-Status: GOOD (  10.11  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

This series convert cdn-dp-rockchip.txt to yaml.

PATCH 1 try to improve coding style on the existing rk3399 cdn-dp
node.
PATCH 2 try to convert cdn-dp-rockchip.txt to yaml.

Changes in v3:
- Link to V2: https://lore.kernel.org/all/20250509070247.868-1-kernel@airkyi.com/
- Add more description about phy/extcon
- Fix some coding style

Changes in v2:
- Link to V1: https://lore.kernel.org/all/20250508064304.670-1-kernel@airkyi.com/
- Rename binding file name to match compatible
- Add more description about grf/phy/extcon
- Fix coding style

Chaoyi Chen (2):
  arm64: dts: rockchip: Improve coding style for rk3399 cdn_dp
  dt-bindings: display: rockchip: Convert cdn-dp-rockchip.txt to yaml

 .../display/rockchip/cdn-dp-rockchip.txt      |  74 --------
 .../rockchip/rockchip,rk3399-cdn-dp.yaml      | 165 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-base.dtsi |  10 +-
 3 files changed, 174 insertions(+), 75 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/rockchip/cdn-dp-rockchip.txt
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3399-cdn-dp.yaml

--
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
