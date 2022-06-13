Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58625C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 16:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFFcwYhizEROLzTDvQ4I0/MGx4Jt2PWKhuCKV8Ui5mo=; b=xTaDv3t5mN4k8w
	W+7XG8HprFqaVO7yZSxTKE3eRhh8ge5A6FUCDCo/Sy2SfCWutL7+LqtLiYyAYgfbIx8/zannPuy3H
	ZaopHCOXt6jcKlw/YGG+jQfBHE0hAjKFJi4UDRBucvmsdCSYSMAb6J76FTQkdWzyqMlPFW6ArBxtV
	tMzm/4h1ES01MJQMjwj6Hm4y4zjK4O8tGcxtBQFde6O/ebX9jI4Fars04thLL4mFY0wpsw4r2JuGP
	jvpBN8KtRRWDoLBKJpS2IGQr1QSsMfNLqe5mNFnJAxBv4bAS0iIcVM5KV12l/Jkn4znQoBfIM0gov
	b+QoHnMqTv9G2BheFzYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0mfB-004eWS-IS; Mon, 13 Jun 2022 16:11:37 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([185.58.85.151])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0mf8-004eO5-JU
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 16:11:36 +0000
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-188-UKF4EeJcNpOg5PEFD63RQQ-1; Mon, 13 Jun 2022 17:11:24 +0100
X-MC-Unique: UKF4EeJcNpOg5PEFD63RQQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.36; Mon, 13 Jun 2022 17:11:19 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.036; Mon, 13 Jun 2022 17:11:19 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Petr Mladek' <pmladek@suse.com>, Sergey Senozhatsky
	<senozhatsky@chromium.org>
CC: John Ogness <john.ogness@linutronix.de>, Peter Geis <pgwipeout@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: RE: [BUG] Threaded printk breaks early debugging
Thread-Topic: [BUG] Threaded printk breaks early debugging
Thread-Index: AQHYfw5tEBAMEt7XXEKQmWQ8WlSw2q1Nf9Zw
Date: Mon, 13 Jun 2022 16:11:19 +0000
Message-ID: <c81870cef50f4e1fac5083f0b780983d@AcuMS.aculab.com>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de> <YqVZ4CyWTiDgngkA@google.com>
 <8735g9mqo0.fsf@jogness.linutronix.de> <Yqazr060OLp2Rpbk@google.com>
 <87wndlge43.fsf@jogness.linutronix.de> <Yqb9xOBiY/262lhk@google.com>
 <YqcN9mH/aVwBoIMQ@alley>
In-Reply-To: <YqcN9mH/aVwBoIMQ@alley>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_091134_955424_84D02973 
X-CRM114-Status: UNSURE (   9.55  )
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

From: Petr Mladek
> Sent: 13 June 2022 11:14
...
> Another interesting alternative is the Peter Zijlstra's mode
> where all messages are printed to the console "immediately".
> They are serialized only by the CPU-reentrant lock.
> 
> This mode is not good for production system. But it might
> be good for debugging. The good thing is that the behavior
> is well defined.

ISTM that all messages should be output (even if this means
that cpu spin waiting for a serial console) until userspace
has a chance to set an option to change the behaviour.

Oh, and can someone stop the distros hiding the console output.
I want to see the 'oops' traceback when I break the kernel!

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
