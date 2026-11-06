Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454FE606A32D
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2026 12:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0tll7Z7+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=jGEFleaZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gQa5w7x3QFV1KJAJIDtQ9w4OTqAlvP0y9ixlTjTmtOE=; b=0tll7Z7+ODYTCWb+EmJqFNtBYv
	G9yCc1YMfU1LNB9tLJgKDx7Mflpk7FAb2K1hNnrxeb9qVQD0fjSWEfJ9To5wjEYM7OBnK0WK7ZvuK
	2Xz7Nry1IgSMRqHo8c2EQXSrktsQfuaHiiTfIxINIKBBjx1qxqkXyV/0VlAF8VDWqTYGaQ7CbFI60
	CBNZEABDDuYk7DlwE9C7+NrW/4BTYLI2t1axaAesY1eDepppCqo+mFIHXc6LZpvlLD+zUAL4IbgJ6
	f7XJ7L1n42v6sBDquoB6WwQKFFgEwXpsZgK2KvjSAfec49/tr/u6w27hmxpURdPj/wcWq1vFq9223
	Hoj8mseA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPJXe-0000000CNI1-0pjo;
	Fri, 06 Nov 2026 12:59:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPJXc-0000000CNHm-2S9I;
	Fri, 06 Nov 2026 12:59:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0502942273;
	Fri,  6 Nov 2026 12:59:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2166D1F0089F;
	Fri,  6 Nov 2026 12:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793969975;
	bh=f1KVRO2gOA2koWtIFP5gpMRCIv0pNVNY2WRXRda16ag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jGEFleaZkmrSCWhXeFWTgO9l9HXsIwWoX1pgl4OWWUYGGL8Hj7XXkfGr+mbhWw26J
	 xdVAveX3YScuWYNpiWkB9YHJDE2XPmvuo+R1O+XSrYysq5gi+IOXKQ43gWXsJMWu6U
	 IrK5jH3HXWDdr+BEY5EhsXHQ52o63Au09CzNFeX22FsPG0Lp4aVaYCv2ZFvi7F4W3y
	 Yw/fXLktbD2ZfP7/IdjeVREW65E0kUPk28Kd0UhKctMqroIHzo7gujLgPoqbMvSUEN
	 xSrd6Z4+dotRHgEuXgbCp6nkoqIA1yuwIsyqDs1B6zdAMO1jWeNFOBlQaCNrfMeo9v
	 jshzfgUMBcDBw==
Date: Fri, 6 Nov 2026 13:59:32 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	david@ixit.cz, detlev.casanova@collabora.com, maz@kernel.org, 
	michael.riesch@collabora.com, diederik@cknow-tech.com, shawn.lin@rock-chips.com, 
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	tglx@kernel.org, daniel.lezcano@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: timer: rockchip: Add rk3568 compatible
Message-ID: <20261106-obedient-daffy-seal-ca84cf@quoll>
References: <20261103192331.394489-1-macroalpha82@gmail.com>
 <20261103192331.394489-2-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261103192331.394489-2-macroalpha82@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 03, 2026 at 01:23:30PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for Rockchip RK3568 timer.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
