Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4587CE7A9A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 20:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJ6hZqBUp+z6Ma8BTvVpWyHGrtfPxOwTrK2/UAJhmHs=; b=zBs5gJL9p88Clb
	pQRbfZ8VWjFiysAnuSXwWOTjTUkEiNo4oFdunO9/fDnegwdweGMjkIdN0ciKyBYuTYLZ58fF3mHQQ
	ON6EnqYNo5T6D8ytPeAkPUVRaGDmNoHz9OIXjDT4xUU8i6QChoC4J608AYAuK4b6xgrTq3VTpaGfi
	PumI0WNed/V5o8SSmxAVFgAS8m8+YiOJwgyAatahYg321FkwIXy13YLxaP87FOR2ZWr+Iz7uhMRlV
	6DPHBy/k14oovwXwp4vFZbYZQ035QU8F4A0VwwuGw87ikRPkJmpb/Czq1MTMiF8tIRd3xaaiZ/MCo
	IEpYAlj7L/xZwwL5E0TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smIzR-00000009jnL-0fCv;
	Thu, 05 Sep 2024 20:22:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smIyS-00000009jek-3JXZ;
	Thu, 05 Sep 2024 20:21:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AFCCD5C5D5C;
	Thu,  5 Sep 2024 20:20:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6731AC4CEC4;
	Thu,  5 Sep 2024 20:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725567660;
	bh=1lLjn97u5ozr3x2AENQrpqcvwTLIoF8oqz860FWuJxU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BJ34kv5ZuKyapFcPxiGffv4WgAsKL5TgEhN+kToqlcoE0f9hJfzF/8V1z3FNycmwT
	 vkIw+D9+Eo3yK828U5V64soeQk63yvcc6yNGXgD8X7iknlgm09SDB4GIVRE9HiwYq5
	 cCm0HKzHdfmcfQlJKUHjYixqyMz5BWJYH62TCEIUA7LWPeKxWGbNeGFPd+0rdV9hlj
	 3K29ikCWKLE912gE+KYsz2W7ZfKJAqOWex2HnW0xZWuWi98O0Vrseor4Gt4yJBH7MV
	 FrE/tEAJwwQz+251cZmKpvXUeQ7x2ZeTJuqFs13dSQAteX6F4V9mAhi61grX8miuE4
	 4m5chhZzuhlgw==
Date: Thu, 5 Sep 2024 22:20:55 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Peter Rosin <peda@axentia.se>
Cc: Farouk Bouabid <farouk.bouabid@cherry.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH v7 2/8] i2c: muxes: add support for tsd,mule-i2c
 multiplexer
Message-ID: <74anzbicky6zgccg7ao7l446fziwcmqcanycczl264neuts7ym@fyd4sdfyir6e>
References: <20240902-dev-mule-i2c-mux-v7-0-bf7b8f5385ed@cherry.de>
 <20240902-dev-mule-i2c-mux-v7-2-bf7b8f5385ed@cherry.de>
 <fvk5u2j7wu7pjrlpbbnggp3vhopotctu2vr3fh77kl2icrvnyt@tukh2ytkiwdz>
 <45c51083-ee63-45e7-b8d4-3822213530f4@cherry.de>
 <4e4d7c65-3c3f-5208-ce08-b63ad39ab425@axentia.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e4d7c65-3c3f-5208-ce08-b63ad39ab425@axentia.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_132100_896710_875931FD 
X-CRM114-Status: GOOD (  16.74  )
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

Hi,

On Wed, Sep 04, 2024 at 10:59:47AM GMT, Peter Rosin wrote:
> 2024-09-04 at 10:35, Farouk Bouabid wrote:
> > On 03.09.24 17:13, Andi Shyti wrote:
> > =

> > [...]
> > =

> >>> +=A0=A0=A0=A0=A0=A0=A0 ret =3D i2c_mux_add_adapter(muxc, 0, reg);
> >>> +=A0=A0=A0=A0=A0=A0=A0 if (ret)
> >>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
> >> do we need to delete the adapters we added in previous cycles?
> >>
> > =

> > We calldevm_action_or_reset() before the loop to add adapter-removal to=
 the error path. I think that does the job
> > =

> > for us or am I missing something ?
> =

> I missed that too, but it LGTM. It's safe to call i2c_mux_del_adapters() =
as
> soon the mux core has been allocated, so there is no risk it is called too
> early or something.

Just a question, still: is it the same calling
i2c_mux_add_adapter() and calling mux_remove()?

Thanks,
Andi

> With that said, I agree with Andi on the naming and the
> nitpicks.
> =

> Cheers,
> Peter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
