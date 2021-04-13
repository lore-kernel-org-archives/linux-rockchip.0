Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED01C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 15:25:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 55481611CE
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 15:25:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 55481611CE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XfTSAfADt5kzTWeujQgHLLXLyFoH8OTuh+5C+E3prx4=; b=GedSzNcr3rD42cQMy44Nckibt
	9YwC6ZhUS41dDeS00tl4dEFMmeR+1z4HTHoH2ykVvWCWnqlGW7BciGnnKUrPx58HsPYMYgqZa7LSE
	yBrnyBbF283MbkjIn4ldppOgudoHsQi90eucJ+20PvfCnd/qeKF3v6+Or0vhHE2TKewxmKE1/qGAe
	elk3owCKhzS7d1O+jMkM1YFBAvkHfHcuUrIIwAdV6EZ31OrNDA1ACjyW6bmImD7H8WSGZXr6XEovq
	faPrUrEteKjQ523Fr8fUT3itkDPhcPWYMR3vC+G8iNgCE2IQ9QU4pOUtvZEp+YxbbERBku8BmnVMQ
	zZCgkYkig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWKvE-009e1Z-3E; Tue, 13 Apr 2021 15:25:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKtp-009dks-60; Tue, 13 Apr 2021 15:24:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=pwo6VGWtXeClcJNiXBrZobhKHZ6+nZfGFmQIUtu7r60=; b=4ENtlfnPqkS/oI8BYNhuiAQhY5
 z8Sir+JGzXHJCjFCsL5zh3K2XCQ90C/EGSArxoaz7IPTlNZMRitbiDqldDiwUv7vI6wP9nW7R5Ub5
 wjBrOwyEZxycbOMGkWdwUFalNoeTOsayTS+y11kK+P2QeTMyek/nBoLKZy7Equ0tdYQPNWTP1ISJu
 fIEjeC4M4eTs7kbLOApS/hvEl6jit9Vdxb2gp7TW6iAyOaX0Wt717/yL24RpE+PQ2KGI9rGzhNVI3
 nLW1587zwNcM0XMsXasjyqmTKSRqJdP+WqaQ5ZUfG80uwpsV9Wuk/J9TXgziYndJIZoif8h8cjfNx
 dRSnxS8g==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKtm-0078mQ-OU; Tue, 13 Apr 2021 15:24:20 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lWKtf-0000C8-KR; Tue, 13 Apr 2021 17:24:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Johan Jonker <jbx6244@gmail.com>, robh+dt@kernel.org,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: pwm: convert pwm-rockchip.txt to YAML
Date: Tue, 13 Apr 2021 17:24:09 +0200
Message-ID: <9940894.0AQdONaE2F@diego>
In-Reply-To: <YHW3DYjr2ifBltVk@orome.fritz.box>
References: <20210412200155.5316-1-jbx6244@gmail.com>
 <YHW3DYjr2ifBltVk@orome.fritz.box>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_082418_825811_9BB617B2 
X-CRM114-Status: GOOD (  20.19  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Thierry,

Am Dienstag, 13. April 2021, 17:21:49 CEST schrieb Thierry Reding:
> On Mon, Apr 12, 2021 at 10:01:52PM +0200, Johan Jonker wrote:
> > Current dts files with 'pwm' nodes are manually verified.
> > In order to automate this process pwm-rockchip.txt
> > has to be converted to yaml.
> > 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> > For some SoC nodes this patch serie generates notifications
> > for undocumented "interrupts" properties shared between
> > PWM channels till there is consensus of what to do with it or
> > someone makes a solution for the whole PWM block.
> > 
> > Changed V3:
> >   fix mistake with compatibles introduced in V2
> > Changed V2:
> >   changed schema for clocks and clock-names
> > ---
> >  .../devicetree/bindings/pwm/pwm-rockchip.txt       | 27 -------
> >  .../devicetree/bindings/pwm/pwm-rockchip.yaml      | 88 ++++++++++++++++++++++
> >  2 files changed, 88 insertions(+), 27 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
> >  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> 
> Heiko, do you want to pick up patches 1 & 2 into your tree along with 3 & 4? If so:
> 
> Acked-by: Thierry Reding <thierry.reding@gmail.com>

however you like :-)

I can pick up everything for 5.14 for sure.

Depending on your tree-schedule for the merge-window, you could also pick
up all 4 with my:

Acked-by: Heiko Stuebner <heiko@sntech.de>


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
