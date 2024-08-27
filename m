Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ECFEC52D6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 09:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWra+B0WTP6EVh7u3LDfRSV+APaMlp/FNNy3Llg1oD0=; b=1fkesEa71ZM31U
	nmtJB7du5QtuYDKYaG+nuFAv8R3xscOSazUmNFSBZrFpEpVoW8zM5H8VXidsYNXuHghypVuEFVkEd
	y6d9ociBCajibWQ/lAIztg6BaCP5Yssp+f0PGjLgDskI+YtcdmDseP4rqJj3qxVj3igL4I976P36t
	js9ToFe1CACwkvrRUoqWge9bogIZrhZOJiNMpe3PgyqohlKHvRvpY5/HLfbE+Bn6VPltPZl8CYdf2
	L+Rt8O1apn2SkhWVTZxgu+OqLvcHIraVNHES3PSjf+snxBK17igisUTlmNJSXNxHDFgME/QDWn9ie
	Rh59+gDBxp4s5Ra1/q1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sistS-0000000AfxR-1rYf;
	Tue, 27 Aug 2024 09:53:42 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sisoc-0000000Aeni-1ueX;
	Tue, 27 Aug 2024 09:48:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 34F23CE111A;
	Tue, 27 Aug 2024 09:48:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9651CC8B7A0;
	Tue, 27 Aug 2024 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724752118;
	bh=Lej6CAf6PPRt3VxOUgFXQ/Kh7FjIH2oWJQXtjqr3t1Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=W2tAqQVww/ncWjs8QD7oT3mEnmkczaF1jlfTUQpg9hajnJGo9DROxdfGCco4Avq3H
	 O+z4VfIpohiu7vzbmZyl/u/M0KvabT3bK+nVA2QW7ObfVdMTO6W/5pd/hJUeUiL3zG
	 1q3oSla6Z1CzJK3BjZ7mHw40dzIfJ3Hm15r7MvjeQceh4qAQE3D6UvMOEk0K4xOJou
	 ySrsVlqC8kExStgBpoHQfeJnkmsCZyPNPMVX3nU0TMU7EeJS3JWKDsPhzKHMkzc8hL
	 LS+c1uNuz1GJw8rWyZ8NL1vb2tbFxOY7gz3xv0cJukFjzLn+xvtmLCeJpXxicLnfHP
	 us6xLPdG+azqg==
Message-ID: <13101b4a-4158-4df1-9807-43fbbc11bf27@kernel.org>
Date: Tue, 27 Aug 2024 11:48:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/10] pmdomain: qcom: rpmhpd: Simplify locking with
 guard()
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
 <20240823-cleanup-h-guard-pm-domain-v1-7-8320722eaf39@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-7-8320722eaf39@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_024842_681806_FC3D27D0 
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
