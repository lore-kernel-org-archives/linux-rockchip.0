Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 980A2E77180
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 09:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EExwcSwqJ8TbmvzAD8G33ErtvJXXt4R47COMgNvqWds=; b=sMedfrIIPwxf6Z
	x21JE+df+lmlitBbvmQDKxL7rBTCnAxp0X3DfdLNOqimvuXFzXHYfjOHvQws0R5YdM+PjxHrJ+GPK
	ISgt3jBC6+3wiPEMW0pZGQC1yGrWtfIbn8QHesxilNJucnGk6OuzgFx9KKk6qMet5yKNt2oitwrsx
	FLZl+uWh4V9n7VNkyvDQk+f4+XoblpvBZZ3tNZp/32FQsYQSqAgGyM/3N4pRF4kHB6gLNHaPsygtS
	lbe91goDjpgW6VrFeMIJ8Ikbf8eM/2TqDK8E68TPhE+i7G0VdmTmRNA225LSN/e0lyDDEBIZ4pzDI
	KbI3aBMG05shwYEZV/tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKaI5-000000077OT-2YSr;
	Mon, 09 Dec 2024 09:42:57 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKaI3-000000077Ny-0ZSp
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 09:42:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6F3E3A411CB;
	Mon,  9 Dec 2024 09:41:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28F73C4CED1;
	Mon,  9 Dec 2024 09:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733737373;
	bh=VBMr9LsHSJGPFtGqHFVHYbEn1eiiaJRMceDta957bZ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EjFY/ZF0biPlZzHFX8a4yRdYvSt60iFvN7mRVBcIPEcifgQt8w5R7u8h38AxJFA9q
	 cWAudzQI/acgkYf1+J+L+r7dvU920K5W/YiJz5WK2LS6UC4Ef0/H4u0fVQ6sJ1VXdD
	 WCzGCJkQ48CHzwfUmYnhD60EkHjxSeKPassSZq6yif1GON0DrBr/w0s/fna1fw9aA8
	 mKYCOstm9+BSHiX0qpbBwKt0gPF/VfyalxXYshZLZ4MkWh7CWuhCeJsZr4B2/wz0WR
	 wubHfnCOovIlc9G9HFJfmaIcPEF8do5Bw2jiNQfnx/tOU9hu0xNKdD66z6eV4WqvYq
	 2lj40laSJfQZg==
Date: Mon, 9 Dec 2024 10:42:50 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko.stuebner@cherry.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Update rockchip company
 name
Message-ID: <kwx76ihsftsgw3u53l33z4kodihyfcvpqpl2a2nk7aedgnr6e6@2324w7s7zmio>
References: <20241205082258.857018-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241205082258.857018-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_014255_236469_6EC5599F 
X-CRM114-Status: UNSURE (   5.30  )
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

On Thu, Dec 05, 2024 at 04:22:58PM +0800, Kever Yang wrote:
> Rockchip company name has update to below name since 2021:
> Rockchip Electronics Co., Ltd.

Some reference would be useful. Wikipedia says:
Fuzhou Rockchip Electronics Co., Ltd.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
