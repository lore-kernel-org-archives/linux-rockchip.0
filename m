Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C252606A31A
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2026 05:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=W1yYUQ8Q;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=iav.lv header.i=@iav.lv header.a=rsa-sha256 header.s=zoho header.b=LTSKy4jf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ck9OIR/0SZtSxLJqR8E38zxg+Yo3IE9pzOQVEKikOww=; b=W1yYUQ8QVpjetq3wQQ8FlC9HQX
	H/O3EgAOtes/F01yJGOvg7+hVpaGJqw0IDMIkXlE/db4ZRSzeH+mx+sScSVBkgOYG3HSxQs2rmiMl
	JsoKfWZ0iPyZfAhjTAXoqvcpQ3etpYOfquih5WFsjVXTEbNnhJNx1NkuR8h3pYb9jB3QlmrZROM0C
	6hB09XChmLT3hyVIMe5ViIYjcJtclAzuifQMtx1jCfrve9k31+7lzxAJXQIUgSxZ82dvaeH/5cHuP
	EXKiyV9+UoC1Ud+VVNN+KxvP0R9yHcEsbnLSghhwyBvrIhmwt0GVTjLQMILcDtfsEURk73SMMDVJ4
	RwVIYZvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPvRm-0000000FhA5-3A7S;
	Sun, 08 Nov 2026 05:28:06 +0000
Received: from sender-op-o15.zoho.eu ([136.143.169.15])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPvRj-0000000Fh9c-0h85;
	Sun, 08 Nov 2026 05:28:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794115674; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=XaDun2aI3VXKS8HtZd+yySF0ZLe3CF5r3ExAuLuPKKx0JPHbs0rTF+Ln4jKACVMfd3reZ0IYPK35VZSugyhKmQWCjzXRh+wi5Gyw8lePYkxmv8W1NnxYnKcbbv9KHogN1VvyarP70xjYDa4Ir/GQyAuGIfe4Z35CsUJHYe0Q8W4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1794115674; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=jGfSOo4/qi2MGnClnBBICNQN29SKcOZpaXj2n0mUyuc=; 
	b=ijKjBOhklnUbfI/HrWdXM411YhCL5/tHCAGJj/SaUHjxwrIxxsDCSQjjCWmNWyGBYwGTXQKg82pZe8Kb6e37h9mcULfHleof7sEqRs++6eMId7d7//j5ffogbtQpXNgyy9d2f3AgLHQtw1vu/yRIEioQlxxyGRHrH9SimmbpW20=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=iav.lv;
	spf=pass  smtp.mailfrom=iav@iav.lv;
	dmarc=pass header.from=<iav@iav.lv>
DKIM-Signature: a=rsa-sha256; b=LTSKy4jfnYXdYo5kn8T4282HmTTFRwKWUeXdGV5PjsEDWR/48r9Fz7lrQ4RSowu+ST8yPOEU5MeHHN3b3BGMxOj0pB+zdcv2D3moehXbfNkJ19XCNZR5KIXMGTa6+vvv0D4wldWwoPKzmiADT4fTuFJELS6raoZvLwBVecAAM40=; c=relaxed/relaxed; s=zoho; d=iav.lv; v=1; bh=jGfSOo4/qi2MGnClnBBICNQN29SKcOZpaXj2n0mUyuc=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zoho.eu with SMTPS id 17941156724621020.6302714073776;
	Sun, 8 Nov 2026 06:27:52 +0100 (CET)
Date: Sun, 08 Nov 2026 07:27:51 +0200
From: Igor Velkov <iav@iav.lv>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 Jianqun Xu <jay.xu@rock-chips.com>, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Igor Velkov <iav@iav.lv>
Subject: Re: [PATCH] gpio: rockchip: restore interrupt settings after hibernation
Message-ID: <20261108-re-heiko-gpio-rockchip-hib-1@iav.lv>
In-Reply-To: <9970336.2WqB4rESCP@phil>
References: <20261107-b4-gpio-rockchip-hib-v1-1-19f4d163a55e@iav.lv>
 <9970336.2WqB4rESCP@phil>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_212803_482393_80B22A69 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Heiko Stuebner wrote:
> This looks sensible in general, but I wonder what happens with the other
> registers of the gpio-controller here after hibernation?
>
> Like does the direction + output value, debounce get restored from
> some other means?

Hi Heiko,

No, the driver restores nothing else: after a power loss the bank comes
back as the boot kernel left it. Debounce requested on a line was lost on
both ODROID-M1 (GPIO v2) and ROCK Pi 4A (GPIO v1); direction and output
matched only because the boot kernel sets them the same way.

v2 will save and restore the output, direction and debounce registers
too, as gpio-dwapb does.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
