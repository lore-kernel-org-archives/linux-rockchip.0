Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BBD2EE0AC3
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 10:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9X36L9ncdKWr/bUzku7WhO1gbyGi0+xv3tWhlPT2ePU=; b=bnwDzyJVUMuemg
	ScDmHnfzBDHH/bxwK1cWz/QYT+gyXx2fZSxIzq9A7HrISfWQDpjf9fDMefKj+yeLYUs+Ew65kHJUJ
	shNuuHEL3+fbbCwdujipRdMoIYaJMAIGUB5zxfp+oQX4LW2nuAvuLwGLSs7n9FUIOHq5IGbvpbOIA
	AJHNQ0hUB9/cuDqSE8xHYfSgHkq27jAlafDamgd04mf2DmoNzNGxEw4W/rI5MzSyoArRt3EAc7aK+
	tK9621bdo7aUAaga+Q43kCs1jT3cidllKAPyge8h3/FdKkR/fhJo8HUfjJuHC7mHEWU6riAxDblpP
	a+I552l/xfcdXkee54zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vog1v-0000000CNMW-31zt;
	Sat, 07 Feb 2026 10:59:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vog1t-0000000CNLZ-0YOx;
	Sat, 07 Feb 2026 10:59:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5FEC444485;
	Sat,  7 Feb 2026 10:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6999C116D0;
	Sat,  7 Feb 2026 10:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461948;
	bh=LeBjoFE01jmavA3LFYkp2oQ2vFfSUBNi+LrOIhvp+ds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jf5PEQ3t+kYsnrAn2zyWd2G0akmQiXmVc+mujySm79xEIhRvY40/aDOMW+lA0gFym
	 Xt6GR1cxiICZ6YxYvLgI8xjK42eQtqU/gylzImiJlGH/zEkVRrlaOfQ0r3jd8SlvA8
	 37XlDqRdElNWL8SEMX5EVlWkqWRGNcgajoxvzD9riUHW9j4V3B7FdLhm6plHgW1Cid
	 RrZfoYkTapRnRLdT1WDp0Tz71V5kRG9EXAYZedP0+7Vl7gNMQAPioOQWAYeKh7g/m4
	 JtjbHdx+lFTiTsFkzEsHaYHa3kh0qFyR/XYlzP0m1zRobGW+qSVWA0l7XzfQWOCswt
	 G6HUx7XivFw4A==
Date: Sat, 7 Feb 2026 11:59:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-serial@vger.kernel.org
Subject: Re: [PATCH 07/11] dt-bindings: serial: snps-dw-apb-uart: Add support
 for RV1103B
Message-ID: <20260207-unselfish-gorgeous-duck-cfc1ce@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-8-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-8-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_025909_192751_FD48BD47 
X-CRM114-Status: GOOD (  10.26  )
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

On Fri, Feb 06, 2026 at 03:13:05PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> The UART used in the RV1103B SoC is still the same dw-apb-uart compatible
> type as on the SoCs that came before, so add the RV1103B to the list
> of variants.
> 
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: linux-serial@vger.kernel.org
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>

Greg expressed MANY times that patches for him should be sent
separately.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
