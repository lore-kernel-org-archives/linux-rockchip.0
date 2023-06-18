Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7AB6EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jun 2023 03:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcik7GjGtlOa/NLMHsrSpMLMC4wRdQiEXc5KLczdGVs=; b=OJJ0ANFx3DrnkG
	fWlQQNYgc+Wd/OwyFBx91zy9ADFM+Tf4w7PPpieguDTSh64pKXxhRXIaRmubblyIqvuk0c7s/liJE
	4cU8GLTWogLKYCFO5vyv4DbFll7vdvmljlBF0r6w3lkmRSrd9rerYEFqNPvmVBxIeZDI8ywLvtC6v
	JdIwFzD7WezRZu7kSkjaDTgBKgW6jD4cWF3uN8yJlGQSUWy/0YaMqKODgI96JkOjZkgeaDUNxs5Cf
	KrWeyPbGES3A42D/rZeF+v12E4HFj2kMH6b291suDHeJyPeyJcRDGl0PmfJhdDq3t6iVA+RZ1UT4x
	6fk19RmCQt5PzEehk05A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAiop-004y5n-1k;
	Sun, 18 Jun 2023 03:11:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAiol-004y4d-1W;
	Sun, 18 Jun 2023 03:11:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D817B60AE9;
	Sun, 18 Jun 2023 03:11:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7AC1C433C8;
	Sun, 18 Jun 2023 03:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687057861;
	bh=QfJGGmVPtzH2/wtuC9y7Mu4NQbqbm41TJrsmBMBHqYc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=adNlcTOIQdffWMYX4FWuZIbY9HuYoiAGLyr3ozcML06ju56PtAa02qK7CF6eAGh8D
	 fR5wRi7si6Ut9H/DbAx9CdPSYN+mXyy4qSAyKLy8XGk2k67sedXzxmcem7XRKrpLJZ
	 N/mEo8O9XrCe82Yhr5p8lOAZD5JymNFhzC4nrA2+zjTq7cGjnu92lmwAk1Q1gtM1lI
	 4LUE8K0VeWg+83PFioWOo9ZO3sCvz7E9ADF9u1O8D4MA0gQGf6FdxwNTPfjoKCngG7
	 99awsLy54uyU4QMXg4uteI/Mw1p2bvqzXhNG9iROJ9d0QwyzXb0BuFcWbyjnHcnaSZ
	 pzKjwR8WkJC3w==
Message-ID: <fa42c1ad-c411-2121-92f7-fc1e1f0f8172@kernel.org>
Date: Sun, 18 Jun 2023 12:10:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4 5/5] arm64: dts: rockchip: rk3588: add SATA support
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
 <20230612171337.74576-6-sebastian.reichel@collabora.com>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230612171337.74576-6-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_201107_608519_9AC2F450 
X-CRM114-Status: UNSURE (   8.51  )
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

On 6/13/23 02:13, Sebastian Reichel wrote:
> Add all three SATA IP blocks to the RK3588 DT.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

This patch does not apply to libata for-6.5 branch. What is it based on ?

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
