Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA7C3C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 02:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ado6N5qEhaHF2FLMFES6fWETz7OQYsNdH4VdJMdPZ4o=; b=cfVH2B4trJri+r
	TJn4jkQotFtzDqPLQdg9bYATVSIfgMX/WNgsdPHb7c+h1HkTHoDLHwaBsIUSdAEKd6OtekHp8x9Nu
	bMEPVO44TEjKHyDFSkLgJzvsq5of/PoHtdgowrOTLiHfvPVGc9pzi7/zEVPpMuQEZiex9PFnUNNiA
	OfPXdvSxlg3JlG0DiJu3ZFgDfbYS1LaFQmqs9F4y/kZi8AYNyRLRTij5qKKuqdCTNCroKw60kAbCQ
	RomIOePA/QPp0vR0e8GSkW7c5/QWUk5AnqAlxmL9SguPZgUAfjbzR7X0KArnP32hf22qCFxHwdhUM
	k6fCzjqdFYqKrYbba/bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGqYr-00000007rtr-1Yd8;
	Mon, 19 May 2025 02:49:05 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGqYn-00000007rr1-3vdK
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 02:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1747622930;
	bh=q/sSSvsejltScJuXpP48TQCHlwrbZHa7HU/nV26CHgY=;
	h=From:To:Subject:Date:Message-Id;
	b=Q5aFVVYgfDaFCGvcTIc30xJX5VGjeBX0TRbqp16Vdw/dsf58Fml1UyCl8YUpydGZb
	 DKXV5s2HLVqmvhDAg8fb7NdFV/sCUYLbGsNLb3vjLwxsyL2pD7oGC/79UbXmZTBbE9
	 k7RGD8fyBOqyV7D8ffy5QvleGJQVdZ8b86edq1HU=
X-QQ-mid: zesmtpgz6t1747622928t1cc315c3
X-QQ-Originating-IP: T3MnAOsWUPLbC2flLp01PBfX5yrywZTMate7vWnKhJw=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 19 May 2025 10:48:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3107093563551695927
From: Chaoyi Chen <kernel@airkyi.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Zhang Yubing <yubing.zhang@rock-chips.com>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Diederik de Haas <didi.debian@cknow.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH 0/2] Convert RK3399 dp-typec phy binding to yaml
Date: Mon, 19 May 2025 10:48:18 +0800
Message-Id: <20250519024820.194-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MKzYG8XJzx27v8Wno56Jlu2s9jcvIOcQB40By9sEkJlhYg7b7t1jD4gb
	xp0HJ//8Ci+pq/rVBNpvMCjrsKbzVuFrM4F1Yd1wnjXMgUUkIIg0RJdomGT8o7sa05+U3Rh
	+6qETCkU/1Hr9vO/x1IU0naFV3UwFr/qW3yUOjaxbWorbFnpy1jj9AgU3UtssvqXmwPPEtd
	7T4VTyiwDS1se+q5uhtJplzvcjU8ypNw4e1O+OBfX+3E3qbZEjuD7KuZuiqW/gpPUz/zLAC
	VqVhRvOhTfqlKftjKFUl/2RuQsL6r7O1I0d1C8lf5rXDXtgdbXT7Vm/a0ptrnelUbDQcbw0
	T37t+edoW7GgbX9PrVesQ7o6qoXUCY+592HOA65r9Y75uld0XWvFLvV95knvf4jjPTsE8Uj
	7QPDVgkKj4SsmAmHWL66DTPkI9KdwqgHPdQMC0oJd0+C5IQ6ecZxk3btsMzOlyKBYu8txi3
	6sDhL/qhx7+BxZgL4KOVUUT/tMwi6ZmbV06wQJvADDGgmK/C6Ou8Mdkl5o83/6sLh27egen
	Cnut4INMU0uTLcvNg6Gzks0KqvMqlKJOOh1B/Rt5gnc14oJhMGb6K5jtsKh0+cJevrtLQNF
	hP4An26UVVKF98oFaIOAtu8QyzLMmD/MjN8AjLf7NjIA53lhf2rC50zjD8rW4dkGTLc0FRZ
	JD5JkCRjNg8D6s52JOpnmwS/2fKWi/v+i2wAxZVqsV3wSXNpb8zSUFV6KBRAOcTzxwotpIp
	B6aRJrSCt/lwjMqpvR521Rp9gU/q73cqu8QscfxfbjFo+GF0ffNJgtdCv2g4uBHSlXK7jsN
	OuC6XegzbrHnX26Rlex7ZuT1d3pzu5hhwHBzEgkBFotwCm9yUc7kbONyZ0cY9en8mNOuMsj
	HMmdbwydeHEBJLXsiYXEWhADvWxZG+jcBADCMsa8D+SnS+wKsdKMeSsQBL0iE2sgpxnR4nQ
	pMQKZumy+hpeYkPVCNE/v1PAHIAKH/NJb6W48HcYjXkUvJdT0a+WxPoFR
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_194902_512488_5A4BBF84 
X-CRM114-Status: UNSURE (   7.82  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

This series convert phy-rockchip-typec.txt to yaml.

PATCH1 try to remove unused "orientation-switch" property for
rk3399-eaidk-610 board.
PATCH2 try to convert phy-rockchip-typec.txt to yaml.

Chaoyi Chen (2):
  arm64: dts: rockchip: Remove unused usb phy prop for rk3399-eaidk-610
  dt-bindings: phy: Convert phy-rockchip-typec.txt to yaml

 .../bindings/phy/phy-rockchip-typec.txt       |  84 -------------
 .../phy/rockchip,rk3399-typec-phy.yaml        | 111 ++++++++++++++++++
 .../boot/dts/rockchip/rk3399-eaidk-610.dts    |   1 -
 3 files changed, 111 insertions(+), 85 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml

--
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
