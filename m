Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1DCEC5321E
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Aug 2024 18:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvVa7fCIo0wbIFWSR/WEmizKsAoXYJlUiOng5WS3hlM=; b=oK0963JFK5lpCN
	cXCt6JiiTfb/btvY6XDemet/Og1nBh9fKHzTuiGeBkqoCPuuZOzQFb57tdK+BpTkdOW2bwVfbFuvP
	yWw96PQXja5djvx37/9HNz0vBGwAl6qpsKQvOAfndKhx20rcJMwygRL9RPm7Trk5VH/EcPS8Z7col
	XBJDYo3B2NwTQ8RbD5E7sny9wmWmPDLq/23uJDEh4IcX4KeP8yoCpnxHXOcUXDEALvn5Rj59RZoNu
	FbrbYDTatUHrkFHNhWkwswReyrgy+IGrvLz1oAfO8/jUvU5+y8xMGIpULVFbAy4mw2Y0tpqK5LS4N
	9cJHWGLKAmiSmT0o2/ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siILa-00000004qM8-1wh5;
	Sun, 25 Aug 2024 18:52:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siIKn-00000004qGm-1Od6;
	Sun, 25 Aug 2024 18:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4Tf919g5pjHDA2tr82ZwJYUnCMczwQw53R+x8hlGhrU=; b=Rh8yo5WzRO2pcALV+TShKqmqFx
	EedVbP0R9DH0In+YtURIyzpiD52JJMuDYBQU5//E1DSsZC8GYnmvnF+Jr+FD6wMunFwJt42jAxqmv
	L5l2fl5Q3FA+HtSF+MtYZYZ8oQEJQdKw0GZr3mMxzge02BEoh0I0CHaG7PwSQ1OpQ5bBJ9ZLK1irS
	i9HuiMGGL1KdIlnYljPzN6v1zjaBt0F6O0swGnbE29yzxry+kCPySX30DKkx2noxuyNT7teJwEmbE
	EFOc6FTIUCOGngDtHrP8rnxL/4jwa/FhhikgUd2LKEEWNTavaZzp59wavuSGy19h3PLZsKReJEO7M
	5bp096oQ==;
Received: from i53875a40.versanet.de ([83.135.90.64] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1siIKj-00019f-9Y; Sun, 25 Aug 2024 20:51:25 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] pmdomain: rockchip: Simplify dropping OF node reference
Date: Sun, 25 Aug 2024 20:52:20 +0200
Message-ID: <1931675.GKX7oQKdZx@diego>
In-Reply-To: <20240825183116.102953-1-krzysztof.kozlowski@linaro.org>
References: <20240825183116.102953-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_115129_432093_7FF61368 
X-CRM114-Status: UNSURE (   8.56  )
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

Am Sonntag, 25. August 2024, 20:31:16 CEST schrieb Krzysztof Kozlowski:
> Drop OF node reference immediately after using it in
> syscon_node_to_regmap(), which is both simpler and typical/expected
> code pattern.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
