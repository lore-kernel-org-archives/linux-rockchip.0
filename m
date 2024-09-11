Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E981EE0206
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 17:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGk2xHJt6SIEr8RoDa6Q20L1hjmC8vu6dijnx94yzXM=; b=ySmcODLiuYOjz4
	X9nnWFMtN/VBPZ0DoBNku+FYEJPmeU1EJpv1LO7yWDx59mEURO0LGAlR/lLEFt5WU6AU1r8oa53NN
	GLwjTALqG934orqxBDeIXJD8Uim6zFt3SpG+hdLyO7/WAdMqtHqI99QNqGkuHV2CQ2mE1F/R9JNp+
	BpVUpOyZBVvOkVPpkK0YK3Z5929oFhZZC/jHiDULPRG6S29MqoYZvq+zbJWrtuAiLYvSlL/xG1E9w
	N+lwXlgX/k7HxFPGVejwYmszsHd+zyHQtLSUr7sYbwVWDwmkdy28NWJIKu//xeWs8O7GkeFTFhI9A
	zEXh/DPO7/B5KlWFGnVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soRIq-0000000AWmc-3x3G;
	Wed, 11 Sep 2024 17:38:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soRIn-0000000AWjH-2N3G
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 17:38:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 587855C076F;
	Wed, 11 Sep 2024 17:38:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51B99C4CECC;
	Wed, 11 Sep 2024 17:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726076328;
	bh=bOVwNWUV6Ukmuh2XCEvIpMUl1EkoGDu5P5d6lc+GSi4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iSAsUVEB/FtCTvh8oZWwuq9IHYV+v8w9YXmHFL7+Z1yj/38tAemh5FxZ3zVH1JC1z
	 NOsFbLt4gKxNy9JCjlzD6RPm5h+BCYlLySxQnEjp3a9qTNpq6snM4nDlHPpIRvG01f
	 31f9vQcoW4JNH5EAENDqrxkKEiZI3JqJO/KQE3eheZbu/F7fTopvVTpdgplahbOeq0
	 pm04IG23jmLmOiJIxIWl3VFppsyXQGRiio3wTOXsYKQaDGYggLF6SiGk1jlhO2crlU
	 nPl0Oqkp4b2Wzh0C6AWf9m476amsnhd1FPJnzWyr8Broyo6dmUq0Wq/vRx/OPckkIK
	 vnohLuSoUk5/g==
Date: Wed, 11 Sep 2024 12:38:47 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	=?iso-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
	kernel@collabora.com, Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
	Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH v1 4/6] dt-bindings: power: rockchip: add regulator
 support
Message-ID: <172607632666.1014488.15274638720541628232.robh@kernel.org>
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
 <20240910180530.47194-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240910180530.47194-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_103849_668238_DC0773CE 
X-CRM114-Status: GOOD (  12.05  )
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


On Tue, 10 Sep 2024 19:57:13 +0200, Sebastian Reichel wrote:
> Add optional support for a voltage supply required to enable a
> power domain. The binding follows the way it is handled by the
> Mediatek binding to keep things consistent.
> 
> This will initially be used by the RK3588 GPU power domain, which
> fails to be enabled when the GPU regulator is not enabled.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/power/rockchip,power-controller.yaml   | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
