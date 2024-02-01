Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F867C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 20:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u/w/NjN4bnzPTk0Ewz0R5FKjV8Zt25UrPNIscFO4xKU=; b=WP24w7kAPeMr0aQ+SLOnk2p43U
	V7Jies0jkGF2HODgz+3r+s2IBF7zmLaQ+OQc3ftoXDgBEdRNaWN5Cs16Ae4fFTVWGb3f4NYHE34mp
	jzOf/wf7yMtbEDX7KL66hVKInWEwjgsXgwf8Ut5nrmpgBEemfN8jssZnSA7Mj/0fvSBSDthbEQZzX
	Ovqme24Pkzzc5mS9MQ7V6Z1FFyYCx4+MX9Dcbj1OZLcRCKlpYE6Z2mwN5Fyr6PwA6NCr82+Cp5qcb
	M2HVZKQEqPLyFN8Y1t5OexA8mejvgfHjaueYD2rW+h42bFk0PCR89raTxdtDySBX6MyJAhxXZKadV
	tYtu6xpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVdUq-00000009GRF-0wPB;
	Thu, 01 Feb 2024 20:17:16 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVdUm-00000009GQb-46lY;
	Thu, 01 Feb 2024 20:17:14 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706818630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mQ4LObGFJg/ha8hZmJ9oAUbu9DDaZFLu+D2ZoTVr7XY=;
	b=uEX/QmMf0zExWZ912UGlq+tML5qMj/92LtN25+1uudl4cc01SleXspXqRqXKJ9nRv0a0fw
	x/N8E64ubnnVJXrJGSBPjwTq4cqHHWivYYPi3YJ46kdkqf4tts136hK74q6NFcqYqaRRt0
	0TjwNrvwt03lKnfYr8u4qpPG3RjdV52YPdcsImOLpCoehjSC94Y/dvvd0bpJUGSrr5Ut3A
	As2O6AzDzQH9Ph60tLDy4f2BURXvfKS0ajp4++ghPJyo3Gv/R9WIb3TVoOkM1cysWAL/+O
	kVd4uhg44YlhOx/8v3j8Z8lodhWBNK/WvNJImFdynAZSkAPcfjEOlTSYPhZnnw==
Date: Thu, 01 Feb 2024 21:17:08 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Greg KH <gregkh@linuxfoundation.org>, Christina Quast
 <contact@christina-quast.de>
Cc: Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj?=
 =?UTF-8?Q?=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin
 <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@samsung.com>, Alice
 Ryhl <aliceryhl@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>,
 Trevor Gross <tmgross@umich.edu>, Andrew Lunn <andrew@lunn.ch>, Heiner
 Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Heiko
 Stuebner <heiko@sntech.de>, rust-for-linux@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/3] net: phy: add Rust Rockchip PHY driver
In-Reply-To: <2024020105-bankroll-opium-a6e5@gregkh>
References: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
 <20240201-rockchip-rust-phy_depend-v2-3-c5fa4faab924@christina-quast.de>
 <2024020105-bankroll-opium-a6e5@gregkh>
Message-ID: <cabb91e97a5e563cccbffd56f331a477@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_121713_216102_AD1EC46B 
X-CRM114-Status: UNSURE (   9.87  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024-02-01 19:23, Greg KH wrote:
> On Thu, Feb 01, 2024 at 07:07:00PM +0100, Christina Quast wrote:
>> This is the Rust implementation of drivers/net/phy/rockchip.c. The
>> features are equivalent. You can choose C or Rust version kernel
>> configuration.
>> 
>> Signed-off-by: Christina Quast <contact@christina-quast.de>
> 
> Cool, but why?  Is this going to happen for all phy drivers going
> forward?  What's the end-game here, dropping all .c phy drivers that
> are in rust?  Or having duplicates for all of them?

I'd also like to know what's the intended purpose of rewriting a mature
existing PHY driver in Rust?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
