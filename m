Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C61E1C52D6F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 15:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YCIib16QWTlTg8LPwaa0p8Uj1kgznO75EGsRsdHNTxs=; b=GP61HAC2xeag6W
	vz2HRPO2didDYurheQk7ZfAHdu2H1eGg//ia946scLQJwFtvcS9pqT99kFaYGs+w31XFHJd9x+OKz
	628Cy9BoietUAaSgAjlw12LSG/6lIeCwsrU9MYDqDxb8gQwKmI+5PKP0RiO/zagoIqJr2wIdu91aq
	bTYrvTGu8XH9X7su62B7HLq20Uupqobnts0CLoyWfT/Wb8b5XWqdAuDaV//tMaGTJksQhs21oXuVv
	Soy3ywB+AFbA8VHps2sp1ANoCDE8F6pyjAX2qo9VclWdV7nk2CqLt0PtykJ22AvlKxSLrUKK/wYFN
	pJv5UEWCC6IOuvy69LjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZu2K-00000009DYp-0KWj;
	Fri, 02 Aug 2024 15:17:44 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZu1a-00000009DFe-2I4Z;
	Fri, 02 Aug 2024 15:17:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722611817;
	bh=YzI0V43/kzaNDgbEk0GhCnjigPpGJZdjx0urigdeuKE=;
	h=From:To:Cc:Subject:Date:From;
	b=GLrmTus+LtId0YIKOkMx3+dctVtuL5KmUS6AGhEI+YGp5lmeLmIm8fCNTPX/O/CSC
	 MbfKNMr/HRyFyxnCWbUAAxDenCoBnIxJZ+mVk3wO5n22VSPJMWSgAlOB2RiWRUTMpx
	 7vO4wfbR4G0C7K54fkzM9KIhLRQO7xmNrztj2faSRqN9Wz73UeqEsSDAx7USuqC6fa
	 vj4nNxk4X0+Ogo16HdGF7JzHSUwk8Bh2XcveJaHXPgQtDZCr8tdvBgzhLTYOVcLqsV
	 GfdiBdX+irzLS1YMUNa6Ob9HXPYlVWgNMXNpcxfJSc8zHHjkhr6IvGjLlfkwYTEy6X
	 dSblbOyLodyng==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BB3A137821B5;
	Fri,  2 Aug 2024 15:16:54 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH 0/3] Add power-controller support for rk3576
Date: Fri,  2 Aug 2024 11:14:57 -0400
Message-ID: <20240802151647.294307-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_081658_759224_C917FE36 
X-CRM114-Status: GOOD (  10.32  )
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

Add support for the power domain controller on the rk3576 SoC.
Patches from downstream have been rebased.

Note that the mentioned TRM is not publicly available.

Detlev Casanova (1):
  dt-bindings: pinctrl: Add rk3576 power-controller bindings

Finley Xiao (2):
  dt-bindings: Add power-domain header for RK3576 SoCs
  soc: rockchip: power-domain: Add power domain support for rk3576

 .../power/rockchip,power-controller.yaml      |  1 +
 drivers/pmdomain/rockchip/pm-domains.c        | 69 ++++++++++++++++++-
 include/dt-bindings/power/rk3576-power.h      | 30 ++++++++
 3 files changed, 97 insertions(+), 3 deletions(-)
 create mode 100644 include/dt-bindings/power/rk3576-power.h

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
