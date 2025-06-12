Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48BF4C71136
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 08:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3KB0yFBP2vz+MVR5BTIbe5inxRUzKuxo0Lxv4COfEM=; b=c3uATAK2n6f0FY
	+KeDgLhv6qUo79TSY2nbc+uNsn9HXPbZ7zVPLP67gKnzdx7iliLrZUBa8AilBuDugKP+NAlsgxo+W
	d3s4jUcrbYXJYDQH4sGRMX1RKn9eeWqYIfwxbKnRKF2mhuOzW8hCDLnJ2L3ECZh3wkEkwqpNOmvvZ
	laaOuiIBwsp/Vv0KWK5yBYF5Lv4oLr5op64WCtS6B706UZNO0K6aNsMu+YN3UnORUE0Cpskep0Ddh
	+S8Qb/ihHxIGIWQBeAj2acXSnDwK8YtOY0NJFROWQoLRW7WIO3qow8x/13p8/s8vtaH/SoJFH9EY3
	CMjXdfylET7yM1fFLzRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdmf-0000000CkT0-2qAt;
	Thu, 12 Jun 2025 08:59:41 +0000
Received: from mail11.truemail.it ([217.194.8.81])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPd7I-0000000CaT7-2uES;
	Thu, 12 Jun 2025 08:16:59 +0000
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id E7AD31F918;
	Thu, 12 Jun 2025 10:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1749716211;
	bh=3VR5y0yctXr4XPaqy1aKaXDWdxCZQO5tubS3+gM8YMY=; h=From:To:Subject;
	b=edDjj3BdUD1gnQTpkEmdkcP/wnYtbxZpJQrdMyg+rC/QFXCa+JIfLShC/OZlNzqXg
	 siW651XVhV8xzKaR41qq0o55LePizdTglIfnsFfkIaei2IWPK3XPjDRCGLc7DtWliH
	 15l0Ln5GvzV7C3u1AzGxO8E7fdhQ89PfiYARKBmK48unDPrYwQfMQ+8335QnqrCBIP
	 oKNsXEW1QdCtN8RwAAmRcx1x6nysHGImfBL5SI6TncUmcQVSS6d9MpCKVqT9mRVOfU
	 ivF4lOQaobzt5BZ2WKmfUn5UbOrNE457dQvNqLFBpOHibGKmiOQM6A4fCPO2K00GKU
	 kwXJvloiVXvFg==
Date: Thu, 12 Jun 2025 10:16:46 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: David Lechner <dlechner@baylibre.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	=?iso-8859-1?Q?Jo=E3o_Paulo_Gon=E7alves?= <jpaulo.silvagoncalves@gmail.com>,
	Leonard =?iso-8859-1?Q?G=F6hrs?= <l.goehrs@pengutronix.de>,
	kernel@pengutronix.de, Oleksij Rempel <o.rempel@pengutronix.de>,
	Roan van Dijk <roan@protonic.nl>,
	Tomasz Duszynski <tomasz.duszynski@octakon.com>,
	Jacopo Mondi <jacopo@jmondi.org>,
	Jean-Baptiste Maneyrol <jean-baptiste.maneyrol@tdk.com>,
	Mudit Sharma <muditsharma.info@gmail.com>,
	Javier Carrasco <javier.carrasco.cruz@gmail.com>,
	=?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Andreas Klinger <ak@it-klinger.de>,
	Petre Rodan <petre.rodan@subdimension.ro>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 09/28] iio: adc: ti-ads1119: use = { } instead of memset()
Message-ID: <20250612081646.GA316795@francesco-nb>
References: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-0-ebb2d0a24302@baylibre.com>
 <20250611-iio-zero-init-stack-with-instead-of-memset-v1-9-ebb2d0a24302@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-9-ebb2d0a24302@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_011657_782626_4DA60E24 
X-CRM114-Status: UNSURE (   7.76  )
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

On Wed, Jun 11, 2025 at 05:39:01PM -0500, David Lechner wrote:
> Use { } instead of memset() to zero-initialize stack memory to simplify
> the code.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>

Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
