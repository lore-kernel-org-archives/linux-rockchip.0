Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98418C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrm++n6wGrXhRZxd5w4c67wBKqseMZzBqUAEkZ0W1l8=; b=kSBi+sP1+C5xFG
	gSXFGUzQ24AscpRZjKBeXY8awXsnDLBqLAXC1PyHIgmmafQGU8PrsBJIOtR4ipGa96ZiFFX1a8fN6
	fkkZPnNNU0iLAiWfbRB0JwTTCgQA1Kr/Sfat6wpl8d5It3AJokdK0kHXO4/kiV9e50OL9+L0dW9/P
	q2cWKpE86NSgeYwmEwoYLFQBSOUwALjIktVfmDF7pQCXBJPOo0fjBHJ5swWO2DXy98gLy3akMkPe0
	mj4ZKS/1oGTtsb8mq9AvmYXs4oKXVdgFfCSuE7NDF8i7Fqx7+KWNBL5sRl+s3cg4n234wXhCHHu4N
	J/ZvbqzLHWUGJNdWh8qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjNV-00HZ5H-2b;
	Thu, 14 Dec 2023 10:55:41 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjNS-00HZ3f-0M;
	Thu, 14 Dec 2023 10:55:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702551336;
	bh=nDwI9Pl6CCoEAnD+fTst64/YqkRvVVhKmZlxyty2nAw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=b7wF6oaus0TpnLvYOVI62QNuXci/Xd3tppTa1l12+jGW1Kj5elHnVNfXkkGE7eZ63
	 pH2QiLUgHz3yAa1sph4DwjxkOEtItW9JA7tOiaeVPI3XJxZ+LUg9kpdXNCQ6CSyDtT
	 Kz9WcagvFIPcdgmMs/cunw0MOn0c8Adx0y5aPLEdIogQgkHXSUVfBqqtwKerzyR9j+
	 lDYUQlLMeMI8UvoRBIfpMSXhqh3aL+vgIsiZBPKSwHIOfom2G1h0InEGlmBfFH/LBg
	 Tf6CqIsaJPMOtJZsY0m7yPZwKNHCOR1nuWbWG7xm4ew/Ckb6GhFDaKGwbY6juzH0ca
	 OEORjJUAhZVbA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id F1D31378000B;
	Thu, 14 Dec 2023 10:55:34 +0000 (UTC)
Message-ID: <e5625051-e9e2-4a75-a11a-cf5b40606fa4@collabora.com>
Date: Thu, 14 Dec 2023 11:55:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/6] arm: arm64: dts: Enable cros-ec-spi as wake source
Content-Language: en-US
To: Mark Hasemeyer <markhas@chromium.org>, LKML <linux-kernel@vger.kernel.org>
Cc: Raul Rangel <rrangel@chromium.org>, Alim Akhtar
 <alim.akhtar@samsung.com>, Andre Przywara <andre.przywara@arm.com>,
 Andy Gross <agross@kernel.org>, Baruch Siach <baruch@tkos.co.il>,
 Bjorn Andersson <andersson@kernel.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jesper Nilsson <jesper.nilsson@axis.com>, Jisheng Zhang
 <jszhang@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michal Simek <michal.simek@amd.com>, Paul Barker <paul.barker@sancloud.com>,
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
 <20231213110009.v1.2.I274b2d2255eb539cc9d251c9d65a385cc4014c79@changeid>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231213110009.v1.2.I274b2d2255eb539cc9d251c9d65a385cc4014c79@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_025538_278291_C0C6702D 
X-CRM114-Status: UNSURE (   9.40  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Il 13/12/23 19:00, Mark Hasemeyer ha scritto:
> The cros_ec driver currently assumes that cros-ec-spi compatible device
> nodes are a wakeup-source even though the wakeup-source property is not
> defined.
> 
> Add the wakeup-source property to all cros-ec-spi compatible device
> nodes to match expected behavior.
> 
> Signed-off-by: Mark Hasemeyer <markhas@chromium.org>

I received only patch [2/6] - please send the entire series to the relevant
maintainers, as otherwise it's difficult to understand what's going on.

As for this patch alone:
  1. arch/arm stuff goes to a different commit
  2. I would prefer if you split per-arch and per-SoC.

Regards,
Angelo



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
