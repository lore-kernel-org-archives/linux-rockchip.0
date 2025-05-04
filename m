Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D16BBC369DC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 17:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tB6nHe0mN981JPR1eJ/HXV6Y28Hz2vhlaWEox8aNMhU=; b=Ai4QVaPpQ3yPfh
	T4Gl0HdiYZuz8UkF6bktcsOWQlY5nQW5S3F9N66ts1di5RjVZkOXr6T2vcgQM9Kc8FAWnpF1IJOy7
	Dnl8jzSWTeQQ5qpBkWiqf3Y4+S60eooHga7WJuZS8VQCLAoMRCADxW5EXzSKIzk1yWKorTzcpjcjv
	KX586NfabqdNlZ3Vyxze4oECTg7G4E8CKaAViPQJCZrCm4Cc8X0kgjKjHtOrgYDeDo+RK/8bblvmd
	G12CQ1vFsPDnlbOtpBtyhabPU2mf+wNRm7gqFHuyLoNVj44zCzQlGNMsVpw0Z/uCbyclWa5l3Sbig
	FzeicGRYJThDtLTQFxXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBdaJ-00000005mqN-2BxV;
	Sun, 04 May 2025 17:57:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBdXK-00000005mBl-1OBD;
	Sun, 04 May 2025 17:53:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 946F044B60;
	Sun,  4 May 2025 17:53:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72FF6C4CEE7;
	Sun,  4 May 2025 17:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746381237;
	bh=sAJdvzybvDQeWe/vbWsKDfvMHoi6pn2rQd77iaylkZU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CEDRA32w3VT5+A2QFdS5HNWIA1E7msrbeLSjmxRAccLwCtDkjsABj0K2d2eUF2NiD
	 zu3Wm+cFSZQgx87sTTxBnPDw7H+O7Z3EktLK6+HetdGpdgceZfTuMfv1AlUC/y9STm
	 Ci/mWS1XbORpTL9zVKntVU+9/P7KRN6LRJQGz9Ttp6zbw/T8lqJGxW8Ji7NUgJQ6f4
	 dH8gUrqtXMRnzIZCcjIhToXs0unTjQ1eFmNYB76NJ15HYFzHEeMn9zgbOz7u30lXKz
	 GdfPCl/0ycXKps4BXjkYT4bHb2bOFdRYTXyve+JUlNM5SdSllr3SwURGpRO86H9CZm
	 7nz9VhREkxIWA==
Date: Sun, 4 May 2025 19:53:54 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: John Clark <inindev@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add luckfox prefix
Message-ID: <20250504-merry-unicorn-of-endeavor-ab9f10@kuoka>
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
 <20250504102447.153551-2-inindev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250504102447.153551-2-inindev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_105358_390368_D186E435 
X-CRM114-Status: GOOD (  12.65  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, heiko@sntech.de, detlev.casanova@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, May 04, 2025 at 06:24:45AM GMT, John Clark wrote:
> Add vendor prefix for Shenzhen Luckfox Technology Co., Ltd., which
> produces development boards like the Luckfox Omni3576.
> 
> Signed-off-by: John Clark <inindev@gmail.com>
> ---

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets.

>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

<form letter>
This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
</form letter>


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
