Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92624CC6B1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 06:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8P1Rso9CfYE0twvo48SBJkM00VbWUjcj8gFAbAPIsM=; b=vKbzm9En5WWBOg
	IPu3Xp5yvp+Dt+ehj0jUDhnG7Ewdl1HMq+0v0gst/41evE11KuDPTOpflt4sztteTSAQaUpCNX7CP
	Cxl21bRPhn9Y7AwLEpa+YXERcx3gUmczjmgLPTrivWJKviN5Vpya6FCUnUUFYpzvrbzEUEcN2aXnJ
	w3xaPx3QT425pFFiTKLlRo4yDc9eJ4oQlKsSXJA5BIu0s99g+v8Tgiiy/an3K6neKmZspYwds3l/2
	44nr6tFoHweG7ORLbNNS5FiX2FgTwDEF8pYsZPsr/EkA+R8K3t4FwSmn1iuviU9FF9EwGoMe3drvh
	s9gqMoDvAf7Zup3H/QxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGsmv-0000000Eeiw-3W6B;
	Wed, 14 Oct 2026 06:48:33 +0000
Received: from out162-62-57-137.mail.qq.com ([162.62.57.137])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGsmq-0000000Eehx-2JE3
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 06:48:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1791960502; bh=e5thbHDIas4UZ0dc2RK5yYennvkn/22hrPyHBBO6PZI=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=xo7lfztcynIaycOjzrsrRLKc9Wmt36IqF0mooy4VRBsQhLh1ZtzPJvOgtdRIj5g4x
	 hM/U2kqlLWNPTkCoEJa3bacKUUi9KMGqAoriEfA9sEDYglC7tMol/CdUOfVZd4mQDz
	 8TMsIt3wjdI8wYzsJqQfyHeXZeUN4jT0GiOmBYyU=
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
X-QQ-XMAILINFO: NqaMgNSdKQxyqHk0HsSnwvpqT2pF3wjU5cgvlf5hAQWOpwbh5ip6E8y5CzVjBk
	 YJlxfNJ7QRFX0fobsBHf2699V8ixGQ3aD1GclqhTx/zNRPSmSO7hGtjfGDSXtmT5uyHLAYA549q3H
	 XvIAwqzOl2Daf6DqsfBW0l3z2MLmJVUTz92Pk2h53W/gGR7e4h5CUurTzdxcXZ23RQ+uLCnWlzQVt
	 kYHIgaZU5arl5Jtq6SxRvAC0BWRvTWdhDpqkKvHXMF1iEIFiB8L+CgrZRjMcA/Cqq61sVv82o6McR
	 lVF87jmv2kjYnV+/ITpjjsxqYmEp4OBG7fJwb+uM6HKtRVanEG0rwExZzmebJU73jvSOxeMuQWYk4
	 ZJw5ka5jnwhr5m+mQ7PSpRTftQPrWbtTX1QbkpGlu3bqXqZbXAwp4rxKe/4PgPerCsOUxZAJqoxDf
	 u6V9cNuy7m0rXrjiP6YDKBQdVrSXou0UiqOpm6qsZH250H8hwXscYXSxBANrw2YtDW+4As7/BAb+l
	 bz2W4HtzA29EhrBRdQ9cHAg0MMUt68qI1EytSQ77xwqAaS58MsqBZ5EpMzuRTs1nfJSvkjMvy251I
	 5TKI+dXHx2riFkWbsi/UjQw9KEK20UeZPsKC4ZzNHRFX3566OjRhTiK8f6ge5INaMQ4k8gLrT+E3h
	 CLxLN85w+kKHn0edNhhDTif2LM61P+6BW+kHF6wI2o/NtZUYRVa5F1Ii0oSenWqsJ/5TQALmCljZ0
	 4u4Ysz12OouxgjIxLqOHnibyZsTdeKGavn3QGKz1EOoN2Sr/2jIhFVmnO8EfMJJnVItOiAepDhCyC
	 hoyKvK+ATL+nCyNtMdnzVtIXOKlsuGLgNuUmxWgIjdlwQiDxkVIFh45Y3kmFjj419Jry2z/9ip4I+
	 YRbHHlRXhfZBqq3EevjOLS9Pl3SBVLHQ+zGXJou2vbkmgeXH60jGc/znZ7hGyqE6JHb5W7I0ddSt8
	 GiTqoIAeDqLyE7jkgA8veBqYiccYsdHxQQqBK/BxN37sDUTjtKCfatpwu7tjgq+PYWe5webfSvRf3
	 nlXrukGv36T1zWOY7BA0Gmw3oMnAXmH/dl7wEetBSZg54KW4=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>
Cc: "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?RGF2aWQgUy4gTWlsbGVy?=" <davem@davemloft.net>, "=?utf-8?B?V29sZmdhbmcgR3JhbmRlZ2dlcg==?=" <wg@grandegger.com>, "=?utf-8?B?T2xpdmVyIEhhcnRrb3Bw?=" <socketcan@hartkopp.net>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH net v2 0/3] can: fix bus-off restart during device close
Mime-Version: 1.0
Date: Wed, 14 Oct 2026 14:48:20 +0800
X-Priority: 3
Message-ID: <tencent_F71C128E473402A41153FC3E9BD269826509@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <tencent_82C93561D200C84C24608C80049C23EEF80A@qq.com>
	<20261014-solid-slug-of-tempering-22b862-mkl@pengutronix.de>
In-Reply-To: <20261014-solid-slug-of-tempering-22b862-mkl@pengutronix.de>
X-QQ-mid: xmsezb41-0t1791960500t25ydy0as
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_234829_156380_E4725DFA 
X-CRM114-Status: UNSURE (   9.59  )
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

Hi Marc,

> FYI: The threading of your series is broken, due to wrong/changes
> "Message-ID".

Thanks for the pointer, and sorry about the broken threading.

> You can use the b4 "web submission" instead? It bypasses any mail system
> completely.

I'll try using the b4 web submission endpoint for the next revision.

Best regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
