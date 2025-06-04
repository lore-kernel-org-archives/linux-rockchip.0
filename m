Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 363E6C5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 11:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qK8S98zVl92wy+3IGIBSXnqDouSfDhzH2g61OtYql+4=; b=T09lXLgHAPL7Xb
	kitqgYOmHMagMeEoSOOg+m9BI4VMV2a93QGdPJPzsVgblUhh0P+u12gi/C+vRCmvqpPLfPqetnvZZ
	NEvy0cCpeTumWvOSl0dkS1QimZ6Zjz0bMgzYePJJSWNnyLrG0E1llPA6pthRclRVIpQvv+XVJVx+m
	5la7PbDMb80PsbHjxYICFz2qaBch+1Jl5fJBEo2Io/0q0KaO6C24MWTLfc1QoDF+hd/k0oqTBeJPJ
	5FVIggJic2SV06HvFsmVXy0HRK40lsYO3Zn3kuZnFrTim6hKkYVTM2RCVTEvDKkK9+T28SHhnTP1V
	CHwSRzVu9jO8iQQ6OOFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmIz-0000000DD5a-2uCW;
	Wed, 04 Jun 2025 11:29:13 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmIw-0000000DD5E-11ow
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 11:29:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 02E3AA504A5;
	Wed,  4 Jun 2025 11:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50C59C4CEEF;
	Wed,  4 Jun 2025 11:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749036548;
	bh=zJyMRFBEczTLqz8z8FYq4UOoOGUJIc8c6r7VF0d1i8U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l0bi89OL8Exj695NP7nJFY4YitSjZMolAkXqFvpYBPq0JRcaRCzi++FFL/oj/Rnn0
	 T3xn+jaYPQFMDMUQTKDPpxcRKjOW6lTInXTr8/RDSWAUepWhIOwML4SrcDQn8v1hoI
	 FBPsiaabO0/9OSHKxqWbj6elSM6EcntC6qtD7aOoInVeRSis5qrAHJL7UDm3OwgMjW
	 a0DVaDgOTb05lnnbyEKrnyWbXrT2EjhE0d3avn7iYCYMHWmxbHkXfkKFgJdhTlt7dT
	 U6TEsTr+JI27Uj9M7KiCK/SBzOAqhvY7ssDJSScy2HUdNDa0jjjeq4ehtfcgZNG0rt
	 BDmJXwaVo40YA==
Date: Wed, 4 Jun 2025 13:29:01 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com, heiko@sntech.de, 
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de, 
	mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch, 
	airlied@gmail.com, quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, 
	javierm@redhat.com, megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: vendor-prefixes: Add prefix for Huiling
Message-ID: <20250604-prudent-copperhead-of-finesse-e5b41c@kuoka>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250603193930.323607-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_042910_352082_B942AA70 
X-CRM114-Status: UNSURE (   8.49  )
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

On Tue, Jun 03, 2025 at 02:39:27PM GMT, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Shenzhen Huiling Information Technology Co. Ltd. specializes in the
> research and manufacturing of display and touch screens for industrial
> usage. https://en.szhuiling.com/
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
