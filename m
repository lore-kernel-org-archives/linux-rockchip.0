Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67CE6C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 02:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32OJKfUcsau2eYms4Be8pdskg5JyogsDGMSvuKritGw=; b=SxhVte+xDGyXI3
	ru8NXOM++AdhHef7qcMqihwT3wc5M5GPnDkHJpoHXQ8KBMTO1UiLGELQwJAo+F7E+AOeeIFeKxFkF
	KDK0SHGTK4j2Jyo3WHAdVCSWHlITrgPHOvE+Iwabzo9mEFMfsH9ljwzCQk+U3MzSjnD9KNRopjJnW
	tV/XJlQWjLJUMfW3pbD4ewoQCqH0Yi7lmV57pd3BXaBadAONAEJpUhcHY/k4h4+124m3Jk+JtwoPO
	DenjQ8mvf/I8SyznBPmETbFOcKj/S4fEH0uE43WjhMR69Lq4hLsFelpumYF21I9MDiQIiaDXpIWNP
	rRQTV/NaazYCKLFFFy/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTxGE-007ZjT-UM; Tue, 15 Mar 2022 02:50:10 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTxG3-007ZgO-99
 for linux-rockchip@lists.infradead.org; Tue, 15 Mar 2022 02:50:00 +0000
Received: by mail-pl1-x62c.google.com with SMTP id t22so3891574plo.0
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Mar 2022 19:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=sHmx2SIfvpTNEf5cOkY7XOQbRF9DXyn/f/xdXCSOGwA=;
 b=Ql/KB4VSqN5VlGuTdKbqBz8ngizA6TizPArl86l1ZsD6ACZ3PGatVjUFZRUlLkbSFD
 qydk1hIlIdAVN6k+guCjCLUyVQ0+qs0VaJW8lnjcNtxUySke5+DaSyxVf7YqXQy0pnnF
 C6PAPXCl/UwWJD/G5k6hByoJJIiLacKd093D0ylo7v3pfgSJcGbvaT48CT7/rX00BXru
 2Q3qOwTQ+qcmCcnoFo7NKDry2yVhH/i7wFeP4vBE/HnK4MBECuMCqg5aJ527ytAx0v6l
 OChGBmMjYXJnfB7T73ivlZ4oxHrnxN5h2bcUJfXngz6DzIRx23hKF/KQF3GEh5Jm2YCk
 49/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=sHmx2SIfvpTNEf5cOkY7XOQbRF9DXyn/f/xdXCSOGwA=;
 b=7w+U0LK/4CWfH6AT5syVUJW/4Af00pCi2Zb7BT+zoUMCk0oJ881ZeLEjaxMrQ+snX2
 8EXfoTV2WkZnVncC8MN3DYR4tVy9sRkUE+eDzW87D6fEBqkuy8KZuBlGGRt+2U4seG1E
 Q0jyED1Z5/IToeaB8Ur/VXY/q5YZKKFTZMwY77IdF3vrdginlXRTcLhWuy1azUlj7rtd
 AyGTXktREkPKb4jeQE5X66xv2/eyGkbWL4pEavtN5sZOz6V6sNSMAiEqaeCTU04dYHIH
 V7E00ZG4Bidnut9Nlo5WzMidcdqDkl2lfmzlo84dgOUMKtNJBvgv4qj46wXleOxWXRSR
 lbgg==
X-Gm-Message-State: AOAM531GvBQSdwmtaB2bxPpy1UvkJHnnHSqF4mWNrx6gFC7aQzKZuU20
 A7Cr9pJMbI+RDNaUEk7FudZ22Q==
X-Google-Smtp-Source: ABdhPJxmtOSaTd8b5BlKTVguPhUAtEs6F+RHz3Hg//CO1Akpchfkc9PKUNmV2slRVpL6iMt0wsZ8GQ==
X-Received: by 2002:a17:902:d883:b0:153:51d5:445d with SMTP id
 b3-20020a170902d88300b0015351d5445dmr11440328plz.30.1647312597536; 
 Mon, 14 Mar 2022 19:49:57 -0700 (PDT)
Received: from localhost ([223.184.83.228]) by smtp.gmail.com with ESMTPSA id
 f4-20020aa782c4000000b004f6f0334a51sm20694162pfn.126.2022.03.14.19.49.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 19:49:57 -0700 (PDT)
Date: Tue, 15 Mar 2022 08:19:52 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
 Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 3/6] ARM: dts: spear13xx: Fix sata node name
Message-ID: <20220315024952.3we7hiwrkskb4tsy@vireshk-i7>
References: <20220311210357.222830-1-linux@fw-web.de>
 <20220311210357.222830-4-linux@fw-web.de>
 <20220314034940.rxkgue2kllnqhucp@vireshk-i7>
 <trinity-0f1389c2-6d2b-4499-a2fc-3cb93f4d09cb-1647272336831@3c-app-gmx-bap56>
 <Yi+4oN5xuS2pq0ru@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yi+4oN5xuS2pq0ru@robh.at.kernel.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_194959_332515_CEB0DCFA 
X-CRM114-Status: GOOD (  22.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 14-03-22, 15:50, Rob Herring wrote:
> On Mon, Mar 14, 2022 at 04:38:56PM +0100, Frank Wunderlich wrote:
> > Hi,
> > =

> > thanks for for checking the spear-patch.
> > =

> > > Gesendet: Montag, 14. M=E4rz 2022 um 04:49 Uhr
> > > Von: "Viresh Kumar" <viresh.kumar@linaro.org>
> > >
> > > On 11-03-22, 22:03, Frank Wunderlich wrote:
> > > > From: Frank Wunderlich <frank-w@public-files.de>
> > > > =

> > > > After converting the binding to yaml the node name does
> > > > not match the standard pattern, change it.
> > > > =

> > > > arch/arm/boot/dts/spear1340-evb.dt.yaml: ahci@b1000000:
> > > > $nodename:0: 'ahci@b1000000' does not match '^sata(@.*)?$'
> > > > 	From schema: Documentation/devicetree/bindings/ata/ahci-platform.y=
aml
> > > > =

> > > > Fixes: 07658d9a659b ("SPEAr13xx: Add dts and dtsi files")
> > > =

> > > I don't think this is correct. The above patch is correct. The first
> > > patch in this series changes the names and that's where things break.
> > =

> > it's right that my binding will break it, but the nodes are not named t=
he right way.
> > And i used the commit that introduces the wrong node-names.
> > Maybe fixes-tag is wrong in this case.

The problem is that people will try and backport this patch of yours to ear=
lier
stable kernels, because it has a Fixes tag, while the kernel isn't really b=
roken
then and there is no need to backport anything. This patch (and others in
series) are just fine, just drop the Fixes tag.

> I'm pretty sure Viresh just meant the Fixes tag is not right.

Right.

-- =

viresh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
