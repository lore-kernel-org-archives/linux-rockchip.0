Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 841D9CCFA00
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Nov 2025 08:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cyKyZ9zXd7rWwN0rPUz4n6GYWuBZRm1YuM25tvkR7A=; b=UmG1Dy1fJDyzpR
	fmkCjWeEzzZhMz6TzqOSlIzLXipQ39SBGDWrSGJOPy49/IV2UTe/jwrLGk+RLSENvL7M77RE+LTG2
	utYJC23ZBhzjG/vURAH5+8j54VdVNk70qTmiestDbOm+whQ8K9+Ozi3IJFiZawGHFGmjpMMKYaC7u
	VJmW9ndETJ4e/FqvpHrecdccUhzMce2DdZlI+ib9WQ7/LcKJ3TBcKqlsXFxg47FbmuWe9Md2zVQNk
	Ou4B8DHwgTq+mJB/m0OWRTyos53NeMKaUZmTN8i/pVr0mPLoanlPOwc4xE5/9x5uy9/MP5poWK5Eq
	AXiE2Ryv4Vx6iB135xZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBy7-0000000BN97-3BkI;
	Tue, 04 Nov 2025 08:00:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGBy4-0000000BN8V-3Z3S;
	Tue, 04 Nov 2025 08:00:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2AA34418E8;
	Tue,  4 Nov 2025 08:00:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0D64C116B1;
	Tue,  4 Nov 2025 08:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762243240;
	bh=gI4iCdit71mE8ghNnG7vuec3jJ4LCtKwql722fHfLuU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aVgj9MQnLSWQ1We1uuCKMV16JQZS4JmApodJKO0/xvNMbcuz+zwF7QIeJv260kJbZ
	 iB9Qm8JW/LNUL7whA8IztDEOuVA4RaClxtaGrN4JTENCuTdm4FE5qk0TxJPFq4euMB
	 T1lWC7SiePHRtQrsFk3mkstlHac53Y5cJF0IkzmWr2udDLDXW15Pw59TJEJEOaE5qT
	 /R8sJjpOHd3nkKnxYorxIKvXnAZlKHmkDcWuauuhXdFoXtFPJsShp9YCbW0D+Vzhit
	 x1cICBLmkcLA0LqfZCCdSMzZtsv7T6f82A7pP2lS2lz3ncmpM2xJpSkLaJxF8n4Ibi
	 D7ZG3EVX6codw==
Date: Tue, 4 Nov 2025 09:00:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Coia Prant <coiaprant@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: vendor-prefixes: Add 9Tripod
Message-ID: <20251104-warm-godlike-coati-b61cc5@kuoka>
References: <20251103171702.1518730-1-coiaprant@gmail.com>
 <20251103171702.1518730-2-coiaprant@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251103171702.1518730-2-coiaprant@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_000040_911201_7237E4B2 
X-CRM114-Status: UNSURE (   9.23  )
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

On Tue, Nov 04, 2025 at 01:17:00AM +0800, Coia Prant wrote:
> Add 9Tripod to the vendor prefixes.
> 
> Signed-off-by: Coia Prant <coiaprant@gmail.com>
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
