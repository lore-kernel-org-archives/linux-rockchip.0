Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CD52C47077
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 19:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ep5JXrp/oQ/6fQUnVlTFrh5eNOFLaqBJOAgW0Qp8Ucg=; b=D4UzYgfQ788cor
	kM0rqyv0QkA66x/883guL2Fwyek9rZMwZlCX5VnprUXmQMsKp7WpjpApTClo/ESKtXzkM45UExQqh
	tLv98Jk+xPPglEpCMR2jmYXdjwqmvoFAgEj/uT9vA/4bqZOOpEcc/GeSBnXL91HEt7sws68ERLH9X
	LxSRJyduoTqjo/O8yVHKP3vi4FjNqPTuDOThxkH83hRR9hfN7IzWUwUqPaTsFtQEQ1YQ6SPlfg5/7
	RnHXqO2dlcnv7noCM6QyboAAn5JzoVqSK/ySEcO1zK9+QruocJTlH0VrcH3uzPv8Wf89+2PA3UlLF
	QyAR/0NM4YceVOoZS1hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPp4f-00D8Vc-20;
	Tue, 16 Jan 2024 19:26:13 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPp4c-00D8Ui-0E;
	Tue, 16 Jan 2024 19:26:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 21FA5CE18C9;
	Tue, 16 Jan 2024 19:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19B24C433F1;
	Tue, 16 Jan 2024 19:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705433167;
	bh=B4b0GWY0RQ8JpYsz9T55TuKhWcRS0NpwY9X992qXy6Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LY7+CK8WU7DjDEgOihpyGM+XAuWkFtPSJ72WNOfgGwo6D1fpQDJcpdXtkpqV3bUX3
	 CGC4ukQylgEKR/VzXIg0Is83b1JRwHCOMiq5UaGFtwuhPwnZ/Ea31ZyAzT8mSEYRaj
	 u0kiaEQYQ+lvDittBjpxD1PTrDTjkw6JcAv1VnjyAx8VfYbcyt+B66SF0uY2dMJgCA
	 leDjeBKo7gW1XfQaUgqQMbiXGTS+UhDitnK/12NNqK2g0hivR6k5pXKwp5Liu5Vjiy
	 Pl4SErZCsJ0eCI2Y7f5G97lrHSxjhGPHxeB4tqp0QtuQQizh4BarJjc4G/Aa9VKMK9
	 RnzQLq3tSdhgA==
Date: Tue, 16 Jan 2024 13:26:05 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Tim Lunn <tim@feathertop.org>, KyuHyuk Lee <lee@kyuhyuk.kr>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Tianling Shen <cnsztl@gmail.com>, Jagan Teki <jagan@edgeble.ai>,
	Ondrej Jirman <megi@xff.cz>, Andy Yan <andyshrk@163.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: rockchip: Fix Hardkernel ODROID-M1 board
 bindings
Message-ID: <20240116192605.GA274661-robh@kernel.org>
References: <20240115145142.6292-1-lee@kyuhyuk.kr>
 <8b31ae29-b88b-4ded-95b4-c2d9bbad24e1@feathertop.org>
 <3dfe868d-ff8d-44ac-a68e-066ac42a6705@linaro.org>
 <2421144.zToM8qfIzz@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2421144.zToM8qfIzz@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_112610_467118_DEB02E5F 
X-CRM114-Status: GOOD (  25.87  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Jan 16, 2024 at 09:31:35AM +0100, Heiko St=FCbner wrote:
> Am Dienstag, 16. Januar 2024, 08:24:44 CET schrieb Krzysztof Kozlowski:
> > On 16/01/2024 03:00, Tim Lunn wrote:
> > > =

> > > On 1/16/24 01:58, Krzysztof Kozlowski wrote:
> > >> On 15/01/2024 15:51, KyuHyuk Lee wrote:
> > >>> The vendor in ODROID-M1 is hardkernel, but it was incorrectly writt=
en
> > >>> as rockchip. Fixed the vendor prefix correctly.
> > >>>
> > >>> Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
> > >>> ---
> > >>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
> > >>>   1 file changed, 1 insertion(+), 1 deletion(-)
> > >> You need to start testing your patches. Your last M1 fails as well in
> > >> multiple places.
> > >>
> > >> It does not look like you tested the DTS against bindings. Please run
> > >> `make dtbs_check W=3D1` (see
> > >> Documentation/devicetree/bindings/writing-schema.rst or
> > >> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetre=
e-sources-with-the-devicetree-schema/
> > >> for instructions).
> > >>
> > >> The DTS change will break the users, so would be nice to mention thi=
s in
> > >> its commit msg.
> > > =

> > > I notice there are a couple of other boards that incorrectly use =

> > > rockchip as the vendor also:
> > > =

> > >            - const: rockchip,rk3399-orangepi
> > >            - const: rockchip,rk3568-bpi-r2pro
> > > =

> > > Perhaps these should also be fixed at the same time?
> > =

> > What is happening with rockchip boards?
> =

> Copy-paste stuff ... boards using rockchip,boardname instead of
> vendor,boardname for their compatible.
> =

> I do remember us noticing this a number of times on some boards
> and requesting fixes, but looks like some slipped through.
> =

> So I guess Tim is suggesting changing the compatible, but with boards
> being merged a while ago, this would break backwards compatibility.
> So I guess both the Orange and Banana Pies will need to live with that.

You may get away with it because we generally don't use the names...

Though there are some discussions to start using them to select dtbs by =

bootloaders.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
