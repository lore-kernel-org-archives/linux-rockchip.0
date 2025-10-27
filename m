Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34CA2CCF9E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 18:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dlMZ8jgaSE+Y+Qd+nnXtpUuLzTT4vR6Hk6xNL7+IGPA=; b=vHbY9Io3D/yJRj
	u09APB6LJrzAR0L4wvyLki0lAKEohQrj2lHwb7VKJFsxXQg07/LcgsHTimM3ud8ACOB3Yqob3p8yp
	wohHNHCNOLDYoyFtVr6M7f44JkPKPvuP+6Xoq4F0ccNLkziK4gBUY743lWf1LhZuBfHfAuQuDMqo+
	JEOSABEhHyz/Y+P888AbVVCdMtyLmUtc2GpIW81Ss6gCWCOzJDfFrpL58NpcRyqfPBLoBsY21Yoeh
	3GFkTXXcvIEhWl8UKoTGqCYyo7/Qpbn/w9y823ZjMr4r8E+FvaAHTvUAZtG5uhbcjBnz8WhefHhkU
	zA6LIlRndimnRdb/uhIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDRon-0000000EXcI-0p5M;
	Mon, 27 Oct 2025 18:19:45 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDRok-0000000EXad-2m1Z;
	Mon, 27 Oct 2025 18:19:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 9416840D1B;
	Mon, 27 Oct 2025 19:19:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1761589178; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=36Cbfb/vjeQ/MuEIGnK6bEu0FQjCPhD4xvsTx+U2YiI=;
	b=hqARmNiwPpusSwZKYVqiX/9ApyoiqEQ34kuYnR5OGtVLZuJCUemXxsuyCtUKGlv3pq5bo0
	VVnO2r9zlxTW1PAB6V1GeVc62DBZvqYa9UnFy0MwiAcHnEXFnHM05jUkspAdBO7fWYaP+y
	urmSrkx/NUvm5Z6HBpzFwW2itsn+taP8SA28E8tHErXq4vUisZrUWn+M/umpX6vzHe408F
	W3eqbHZWCfFvHz6QDWNTNIvaRvs5EeFKviSmsv0bPFZFLnZpdGgEwTYPRatYYhMsubajif
	YjeqZ7OWCAGIRsKDHG4McORglLhhQK3i5cdkFLGwJyEe6Z0TnQup9qGF9TW7Jw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <60a1046c-437e-400a-8e2c-391cd471c358@kwiboo.se>
References: <20251027154517.136976-1-diederik@cknow-tech.com> <60a1046c-437e-400a-8e2c-391cd471c358@kwiboo.se>
Date: Mon, 27 Oct 2025 19:19:36 +0100
Cc: "Diederik de Haas" <diederik@cknow-tech.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Johan Jonker" <jbx6244@gmail.com>
To: "Jonas Karlman" <jonas@kwiboo.se>
MIME-Version: 1.0
Message-ID: <7dc31259-c172-de0e-554c-2563014b9c2c@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Harmonize regulator formatting for Pine64 rk3566 
 devices
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_111942_942474_BED3F51A 
X-CRM114-Status: GOOD (  12.77  )
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

Hello Jonas and Heiko,

On Monday, October 27, 2025 19:06 CET, Jonas Karlman <jonas@kwiboo.se> wrote:
> On 10/27/2025 4:39 PM, Diederik de Haas wrote:
> > The regulator node properties in Pine64 rk3566 devices were formatted
> > rather inconsistently. To name a few:
> > - 'name' was sometimes put at the top of the list, while at other times
> >   it was (mostly) sorted in alphabetical order
> 
> Personally I prefer to list the regulator-name as the first property, I
> think it makes it visually easier/quicker to identify a regulator with
> the name prop at top.
> 
> I typically try to use the following prop ordering for regulators on
> board DTs I submit (and review):
> 
> - regulator-name as the first prop (to quickly identify the regulator)
> - regulator-min-* before regulator-max-* (natural order)
> - regulator-* in alphabetical/natural order
> 
> Maybe this preference just comes from a long history of always putting
> id/primary key/unique identifiers at top or beginning of data tables,
> classes, structs etc ;-)

Oh, I actually agree with your and Heiko's preferences when
it comes to the ordering, regardless of that being personal
preference, tribal knowledge or just common sense. :)

However, that's quite conflicting with the current official
rules for writing DT files, which don't recognize such exceptions
at all.  Perhaps we should attempt to incorporate such preferences
into the official rules, because such non-standard ordering does
make DTs more readable?  Following the rules is good, unless it
makes the end results worse, IMHO.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
