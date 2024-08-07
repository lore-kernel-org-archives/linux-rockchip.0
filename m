Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47E61C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 14:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n8Acb9+8m/tInFbeW4KOKkTHeeCONA+/b/EFqPzUrZs=; b=B/up5sh0NdsM4ddSOCB2NtIPsj
	H/h4akj9mcNq1aYZ7lUgkjt3oBMOc5D0NNmwUDPGyXrL7It7CjFKHC47yaYy4mCF/zNZe/B321ulP
	lOoITRvF91CuelH+qfo16ETnNEDabCM0+7aaKrVZaC+ttgzM21eeW8U9OTxtRFLUzLb2SdgHvUVpy
	lv+skv5qaEIx1MPNcEeaOb/dcSuEz9XqZ6xqlEeJbJj0OQsuVf5SYQfODTmrJPPSA1wkqyTmR9ySr
	/9nJxz0MS4uFtjyRKEkI2p/Pcr6Y0FhZZcJyG3msePBDNPC9kCldyQbu0zvCbKuxZ08ldN+BTFT1T
	mb5ak8AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbi08-00000005OVK-3KFA;
	Wed, 07 Aug 2024 14:50:56 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbhzs-00000005OTN-3H66
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Aug 2024 14:50:42 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723042237;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ELN6BEIp3hOavY7nVLCzGZJ7HFvIUZlv5YQ2bIVSMLE=;
	b=fIpJnbqtW+sXBbIP/4eGe0T3kUwckSy/BueXEPQghV50kuZQRks5lEpoPnMRIdC1KNC5KA
	VUuGTvSD4+3zNnCGsr3cKazN+1pg7koJQm5mqvRKDZfX6WveXIet2AFfRrNQalcufZsJec
	oqIqqAtkB7ue3wFvrGtcdzuhv86PwE4CKP5SiDR8DpB3zNpXr8FGU3r+IPWu2tx5cTXxrB
	Uf8ckf66Nj1Gp0d3UuwWTOnKuJ10UeIzbK2t8Ed/OXP+RBlhlWkLAdFqJ9A8eK5/Hmw3OR
	fqaF0Ogql5inxC+w+2H6q7IPFOpC6TjTKv5cKs/wZE0E7jHlM70OwVRBgtZj0A==
Date: Wed, 07 Aug 2024 16:50:37 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: [RFC 1/2] dt-bindings: arm: rockchip: add Radxa E52C
In-Reply-To: <20240807084642.742-1-naoki@radxa.com>
References: <20240807084642.742-1-naoki@radxa.com>
Message-ID: <b7f1f8c0cdc132b175d8cfba218b4441@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_075041_287900_483C35E0 
X-CRM114-Status: GOOD (  11.48  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Fukaumi,

On 2024-08-07 10:46, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa E52C.
> 
> Radxa E52C is a compact network computer using the Rockchip RK3582
> chip.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> how should we handle RK3582? as far as I know, it's just an another
> version of RK3588S.

Could you, please, provide links to downstream kernel code from
Rockchip that shows the CPU and GPU OPPs for the RK3582?

By the way, is the schematic of Radxa E52C available?

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 2ad835f4068e..ba6d03b37bef 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -759,6 +759,12 @@ properties:
>            - const: radxa,cm3i
>            - const: rockchip,rk3568
> 
> +      - description: Radxa E52C
> +        items:
> +          - enum:
> +              - radxa,e52c
> +          - const: rockchip,rk3588s
> +
>        - description: Radxa Rock
>          items:
>            - const: radxa,rock

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
