Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1810BC3601E
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 07:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpjJE1mi1FmXEkwdJrET+e9/zmDkt9rsQcQXmp00bd8=; b=RfiDmY3tI/BEoE
	savfUJ5baZ6uvF7+MA7HWVnJ4zMkjvm43+E03vE1NBi0rjQaPa5jU2vrKT6Vy9OWRnAgMOXz6LBKd
	oftCRZqBRkwJilOsLYxYbsMPJh9QB6ZvJ+4G66lLbgVaCGvQsO11JZgzAZpaSY3PRWLBSf9sOrqfU
	uUeIoQHKPwUIiOULqjw+sej4Dagiy5QamfK4yv0o1c38dTz13ZFnf01t52J075o0Do6DVqWFmmCOV
	D4Krz1SQnBai7e9ZcKXqRuqdqcsn9M7NU4jDYj6UaeLyAS6kmsx1f7BV4D1wvT4Y1fclU1DY5dKTx
	lFO1cc4THjuv59xIeIIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gv3-0000000GmD9-0c5u;
	Mon, 07 Apr 2025 07:29:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gk5-0000000GiSV-0FWV;
	Mon, 07 Apr 2025 07:18:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=4VmBqyKq+yIiEc8KQ9+sRwBtfBe5CRaZLqUvC30Bq0U=; b=UbfjnRyhnyK7j21mLA41RABWbI
	E1b5z1vi32IAOPu08i7tpzQbGlRg3aETD4y8Ulwg5GRUVmrq7ANyJOiq6CB7yS7EgGWXnoU5opwz1
	Cs/q3hDnT8lOZILMhHP19TILENOa5rllsJCa1xH0RefE5eEijt2a8bj4f+BzTyTIVc6jOtyMbJa7x
	mnPA5/TSazHjHE6qVkoHjWVXfJhsicNbabOsEEeMNLzR2SoRu+CYWXAI998WPmZcb8p8EeOXV8CJZ
	TWWsiIEyFT4eobtUNr3yujPnz0Mab43mxO84aMKhaYaUtfvP1gb7LdNP6dtpsae/4p+v7odsCvCPl
	Zlscb4Ag==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u1gjx-0000tP-GN; Mon, 07 Apr 2025 09:17:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Marcin Juszkiewicz <mjuszkiewicz@redhat.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Enable HDMI features on NanoPC-T6
Date: Mon,  7 Apr 2025 09:17:44 +0200
Message-ID: <174401024395.372530.10209184803682823778.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250325-nanopc-t6-hdmi-v1-0-299a2ed45878@redhat.com>
References: <20250325-nanopc-t6-hdmi-v1-0-299a2ed45878@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_001801_095464_CB056E26 
X-CRM114-Status: GOOD (  11.56  )
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


On Tue, 25 Mar 2025 20:51:45 +0100, Marcin Juszkiewicz wrote:
> This patchset follows other SBCs and enables second HDMI output and then
> enables HDMI audio on both ports.
> 
> Tested with 1920x1080@60 and 3440x1440@60 displays. Worked nice, audio
> played on both monitors.
> 
> Would be nice to have an option for more than 60Hz (larger screen can do
> 75Hz) but I assume that this will come one day.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: enable HDMI1 on FriendlyElec NanoPC-T6
      commit: fc1f5f5bcac7df327a20f4bfbd4872e17d38601d
[2/2] arm64: dts: rockchip: enable HDMI sound on FriendlyElec NanoPC-T6
      commit: c0898e6881f964ca831c407c7019cd7f307d4368

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
