Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECC5606A33B
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 21:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VOZRjXIt;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=p5fVi0mu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+QHV5sCGUUfg+1JHOBiYwmTwefrgbAoxrBebVpEx6kk=; b=VOZRjXItRlP0Ud1XVuxHl85elI
	L0Vxnbyd9Cm9StGhXteYEMSUCaB1KVNvGYvkNUpiI2LooedK1Y08Yh13jyay6B6VDzZyVkb6fWfmr
	4hgzzOE+Tf1Ws/RKpP3IQ7d7ZbABuoAYMZ3S6pfDWc2PYkYDofZEZeC2KnCV9PEYcjP69HIpOzflE
	OoNIFKpoHyUCK+sRE7a23pt1lL/fzO/qMJYslO37gyi105+l1tDmDTArS5kl6xt1EaCpO18T0jT3K
	Cgp2QcxwHsH+aw1UhEgAeMg31EEgrAAc8UumOVY7KOg/cc0UW1jMJl370bZxtE1GPo58oMlz6kMuL
	TYu//ebw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRyVO-0000000EWod-3b5e;
	Fri, 13 Nov 2026 21:08:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRyVK-0000000EWlI-2wmf;
	Fri, 13 Nov 2026 21:08:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=r2gkPj5kQuz9YqUKX4TJeW3u1cPMLY58iyNWLASDipA=; b=p5fVi0muYoS+ENLYrw5ud36LFT
	zNplE/CmOFckyyUm2RutQKe3KeivclMTP411SN74kLmPsSZyrRnXVzj5lhcNODYBQnLs9gEWfnJGT
	vs9U47u3fqEnX7AKgU9o8Dinud+QKqrMI4w7Db0U1IURk9Bf/QEdn7d0mDTnXp2cIWrV5UN2THIWx
	wZXE8+k3phwgqIqyZVeEZOwh50ez2GUQcPEXs7Lr0TS5uF0VZYf7oThAaYjEGy4XI7aj+7/p/LHF8
	7DUetwlOmWmNhtfzHxD3xlvmyKknn6zRwyd6/leWm/QRYGe7TGJBRYARx5TG/s8kgBXcVhjOSSIeG
	hdM2yO2w==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Igor Velkov <iav@iav.lv>
Cc: Heiko Stuebner <heiko@sntech.de>,
	broonie@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	luca.ceresoli@bootlin.com
Subject: Re: [PATCH] arm64: dts: rockchip: Enable all CPU OPPs on Kobol Helios64
Date: Fri, 13 Nov 2026 22:08:01 +0100
Message-ID: <179460406461.1165597.1626712698379788020.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261108-helios64-cpu-opps-v1-1-31aa4afb7eb8@iav.lv>
References: <20261108-helios64-cpu-opps-v1-1-31aa4afb7eb8@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_130814_776978_1DF1778D 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Sun, 08 Nov 2026 22:02:51 +0000, Igor Velkov wrote:
> The Helios64 device tree deletes the lower OPPs of both CPU clusters
> because the board was not stable with cpufreq.
> 
> With all OPPs and regulator-ramp-delay = <1000> on vdd_cpu_b, the board
> hung about 9.5 s into boot both times we tried. With 40000 it ran 40
> boots and three one-hour DVFS runs under load without errors. We did not
> find out why the slower ramp hangs.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable all CPU OPPs on Kobol Helios64
      commit: 30eb5fd93649928b9e4149d24fa182c8521fdc20

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
