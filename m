Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF95EC3ABB6
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 20:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhfiucXhAiLgdHcED25o0pIQAzFb2mbRWf8JM0rW58U=; b=s5/h1DCtIrGucx
	zjJ14MtvTOFI90MLpFfPbsDP52ieXIVrOAXWAct62JtNKzT30lUtJF7Ud6GqcmeHJn6bnsq9ueovA
	zjMhcV9Gvf7hf3czixDvU4FVaiSLQdgkrvaHbkk745f+R7IlQR+BS83skZMuLLkW9HJF/B0/3HkOX
	R5w6itnsa8LKq9Um7A2ZyuuxjVlBW3HsjNwh+RWj2ZWSfWB09JEyV2iargwijdZR222IMJjZ1/8KM
	N7Wq72YA5rg3KRUjvrRyfccN9HwV8yPEG2jDXZgnTeuf/59vW/DcpYHAxLtDz9a784bejsM+uoGIo
	fXyQlAVaguBVa9iUWdIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC2kT-00000008XcK-4BeF;
	Mon, 05 May 2025 20:49:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC2iS-00000008XU2-3SDW;
	Mon, 05 May 2025 20:47:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0BF095C5563;
	Mon,  5 May 2025 20:44:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48B18C4CEE4;
	Mon,  5 May 2025 20:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746478027;
	bh=ddICR0mNLi+4InQVuEWoff9w1rDtvhO3HLxEJlaCnm4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=icXJXNJkCkS3jEBYBORhYqhUxh4ijb8wCNsrwpLDigvQZTu34Ixq0g5KDz6Y+m05y
	 IqmJjx+isaC5GgW7iJRdYYT6lfi2YrQW4VB7h4iGBZi60Zrr86alt2rTnqy4R065IE
	 DAlm2PYfwlNhdzbYGhbx1834+Mpq301d8pDoy22ydcFvrQ2dy319Jm67hLwB7b9I7Y
	 fRmFaurIX3eEcL5osM5jAI7YpspBaSYGnDOwoNpCIjHyrormRj6zC9Letnu891gSG5
	 t/LP3UrJ2Cz0N0piHmmXkXoTw6D6crpEYCewgK10rnk6r66AHvjv+10TQEMqJXFCxT
	 eFNqc0vjXr7TA==
Date: Mon, 5 May 2025 22:47:04 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: i2c: i2c-rk3x: Add compatible string
 for RK3528
Message-ID: <h4hpaadpeu2pnsbcfbg4iye7w5sn26wflth4uztdghafuegqi5@2xbtygdwe2hu>
References: <20250417120118.17610-3-ziyao@disroot.org>
 <20250417120118.17610-4-ziyao@disroot.org>
 <4864135.rnE6jSC6OK@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4864135.rnE6jSC6OK@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_134708_903450_61D7DF8D 
X-CRM114-Status: GOOD (  13.22  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On Mon, May 05, 2025 at 09:49:36AM +0200, Heiko St=FCbner wrote:
> Am Donnerstag, 17. April 2025, 14:01:17 Mitteleurop=E4ische Sommerzeit sc=
hrieb Yao Zi:
> > Document I2C controllers integrated in RK3528, which are compatible with
> > the RK3399 variant.
> > =

> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
> =

> do you expect to apply this patch to the i2c tree individually,
> or have it go together with the devicetree patch?

with these patches, I normally wait a bit to see how the others
in the same series go before merging.

I now merged this patch into i2c/i2c-host.

If there is any particular need to merge everything together in
the devicetree, then I can take it out.

Thanks,
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
