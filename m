Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CEBEC52D6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 09:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWra+B0WTP6EVh7u3LDfRSV+APaMlp/FNNy3Llg1oD0=; b=4rDq58uaexJVGx
	tJkTTVuxZYltsCf26Gw5oBqpSX4T/UaSCVKthXpf67Jw1B2zSNfZAbkUpakKPr2QhSzpTNv5K9kKg
	v8fAfCw4I+8R+NUVEg1A74+rldTaa7CVKoetmIF233mmi5dgRvh8MEduKALG/vY7ICJLD9FROlHRm
	0Do1YjPQlVXV2H0ipUnnIxlMRvY3DtfIxe+CwpiORKqfKNDZBBd+O6lMDUVR6Yy8CGgY3ycOca6LD
	Rh5RTUM9xbEEyW3C+EiJUZ/AETQAOG1JBbZcAOeH7fHC26429L4VWB3/K7fn9i/FrFbTrLi68eZmk
	WhfzLq/kkjMvtL54BTAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sissg-0000000Afl8-2eRZ;
	Tue, 27 Aug 2024 09:52:54 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sisnZ-0000000Aecq-39RL;
	Tue, 27 Aug 2024 09:47:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0C60AA41685;
	Tue, 27 Aug 2024 09:47:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE59EC8B7A0;
	Tue, 27 Aug 2024 09:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724752056;
	bh=Lej6CAf6PPRt3VxOUgFXQ/Kh7FjIH2oWJQXtjqr3t1Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Zr/XzIUsj5/ziXoYQv/3uU0SKUJrI/0HY2qErpDIQqPzJVs7Orag3qWxFWyBpFSEA
	 HG0WGwTigeSzFpMaFz5++5EmdO6rh6RZ+4GvxkLAqFtF+9Tv0FycmZIcqDhP8MweeB
	 Vftfy7pycegFwN4q3XAJUkjTg/RtEA1f1j3H2eyMCZJVfr6C8WDitEuq+hGTNFIvDI
	 7bgVoW/r/KI/5k+YEyoiuLq31M9CTLF1ufv/drLxyl1yN/StHrW4Py7a/zqAzhxyEf
	 GPoLRj/wx1u1bWSh0mzKPJ4svbMxAA7gPRHF5jJ73U9YnmTQ8BC7FmhjnkzR7iupvd
	 /AZ6RENkIRDdA==
Message-ID: <3a9914b6-521c-40da-a03a-685d7477fbb3@kernel.org>
Date: Tue, 27 Aug 2024 11:47:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/10] pmdomain: qcom: cpr: Simplify locking with guard()
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
 <20240823-cleanup-h-guard-pm-domain-v1-6-8320722eaf39@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-6-8320722eaf39@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_024737_890450_FD31D891 
X-CRM114-Status: UNSURE (   6.55  )
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

On 23.08.2024 2:51 PM, Krzysztof Kozlowski wrote:
> Simplify error handling (less gotos) over locks with guard().
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
