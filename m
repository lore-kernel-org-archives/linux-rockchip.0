Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DEA4606A32C
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xbU3JJY+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=dcUgFA8w
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lsCby5eIwlJtM8JDa+rZqijqAjn+ZCzH0dd9EEZ8ed4=; b=xbU3JJY+ovpBr/WtMnnMsDGnhE
	W7/oiKNNmOtjK7o58/mSf8/UflSulObkT0wXpx7jM3/xbQ1X/74Tgo0Lee72pd7xBPyiTZ07aIwgk
	nOLbQRInDVY1uraYwJTYG0Z5Q46qXqONsXCipj2CPAsV10WXW6/f/n2CyCurdHSXi97K5gpkskZV0
	XpS/vTiZPQIRpmmbVZjgFYeAZDlu4qBSXIZvT2Z5JidimXvcdTWjQyQ5B/u3bh728W4jatKl0iEqQ
	7XXKFIY5VAMe1MLWP8ujbothR+EDA76ysSi7yO9jUB9hGjilBfgGeAy0aWRroY2mvP2feXKgbeQU1
	cmxTgRlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNqS5-0000000GNUj-1lf6;
	Mon, 02 Nov 2026 11:43:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNqS3-0000000GNUH-36Pd;
	Mon, 02 Nov 2026 11:43:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DF8F260618;
	Mon,  2 Nov 2026 11:43:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A15C1F00A16;
	Mon,  2 Nov 2026 11:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793619826;
	bh=deiRugqUlG37p9Wv3fsfyPkX3UWvJLBCmJ/1+SGNcog=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dcUgFA8wh35BSOtvCYcclVQlwghBnwx0GfFoM5RVAt3mNNYY48YZaftacMfKTw24x
	 TFwBl2NgdC5ILeT+gED5+Mk7ub3fKYpT4fRYH1Th7UK/y1Z+yZCNo3nvMfupn7nML+
	 CZY9EViu4HfDSpjouOmkWduYsO7wxYha1m/UbqGIfegrbiipfM6VeXshs+L+ykaRMU
	 4UR/ahEqSfwNr+Yh04AHyIVd2S71lN9kmQ0W3uZTko9Vl/GHlnW6ZZHYzCMNUT20Fp
	 S4B5iKYaIM/si8ISYazkCcKr4LTYBZZPBGwpd+yt1c1kyvRtwo2m7/z5OFzJzvDsEN
	 L990q7EN/OlHA==
Date: Mon, 2 Nov 2026 12:43:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joachim Eastwood <joachim.eastwood@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <Shawn.lin@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: add FriendlyElec NanoPi
 M6V2
Message-ID: <20261102-annoying-vulture-of-development-9eb1a1@quoll>
References: <20261101-nanopi-m6v2-v1-0-e401ea64b394@gmail.com>
 <20261101-nanopi-m6v2-v1-1-e401ea64b394@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261101-nanopi-m6v2-v1-1-e401ea64b394@gmail.com>
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

On Sun, Nov 01, 2026 at 11:00:52PM +0100, Joachim Eastwood wrote:
> Add device tree binding documentation for FriendlyElec NanoPi M6V2,
> a single-board computer based on the Rockchip RK3588S SoC. This board
> is an updated version of the original M6 board with a few changes.
> 
> Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
