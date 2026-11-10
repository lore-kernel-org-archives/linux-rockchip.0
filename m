Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC2D60A2605
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 03:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=is2ofrVZ;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=fZUfxXVy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5X1sKQI4eA6dH+jvJzWYg0j6Ytv6fjH1gtvWD4rpGf0=; b=is2ofrVZUMfQPLk5xifkpFiHoB
	jYkdHQnZfT2xtTQLpwF6FOxXc2BXxdbmdEyKMewoAwgmFoaCbLS0dO0XIZwh6nTYK4NOKlXOBBQQP
	1kJbf3QHwqJp9ChdKvFLMIH+z8ty0hTFns450QVDwWIR16BbnwgR/osg5aLzuqLAqHCjiyFcVyHUy
	gziCkGiidBqdEIh/Rgof+DgqouaE9L5+2RFPvOGoKgUlzbndJ50IwQBuPIbEmRrlshoIhShr2LBeV
	XKpczRYjfmNcq02TU5u5kghtJ790etFJR/iURMlEkaCtKxdlIh34BQsDUI5IL+gDYw8Z6kbaRy4YE
	YCyHMxxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQcB9-00000002Dwx-216Y;
	Tue, 10 Nov 2026 03:05:47 +0000
Received: from out203-205-221-239.mail.qq.com ([203.205.221.239])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQcB6-00000002DwF-0vZL;
	Tue, 10 Nov 2026 03:05:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1794279939; bh=q9XOYK7wX+00B6FBPgLD2vBKMAkmDiR49f/zui5qQz0=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=fZUfxXVyc6DAD15Sv5X4swqN9j/GmjL8dRnoagW1DhD+O/L6QRUMlsggANFnRQ0Bj
	 D5veAtp3I1xww6mVMV1Tr+z5flqP62yg5Y/LzHau/FXDztMX9+63fkAMDnicnryiiA
	 RfwgTnlQNClTOqf3FGIO1LhVf7JathlzAxx97xHI=
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-XMAILINFO: MzHbHz6ky8ylxXRwvpD01xe5vfDxiM5d4sy1mzo5PARKG0efZTjt8CVhuRmRZB
	 X916dvvbNf6mSP72RiWNcNkqCoNPOcxgBWOr5TCZcXnrUl9jCXlBL7sN0QJ4T5Y3UdWVhkCbnXnpG
	 vdp9c5eNmkQygDx70y3v0fP7PLOER3IGW5zxJhXPUmUgyxGfqZwX2rtwe3Jtn8xzOde1dGcyuBCqu
	 B3CmRyVm7R4LWQcm8jyBLfeacUa7dugB4ZvW+mqQuK17Ml+y8ub7YPpJctk25Nys2Mvv769EMSsdn
	 gyFpV4NtYY5QzHMlFVwUMf61TfKrDif+QvN+eKFykf8fTRr4P6tUAMX8EjrmxtXe08M0wJY2zcUsV
	 ZCbbeAv7i2dpy57uuj5FAmeBEfOhOs1aeSEH0H8cMnzrL5dxPYAS/1QrmLQ0Tnz/MFmRldWYiA+AG
	 caiEA5CJiQ34zO8hIgYLPotpS0901vK+WlSahYTacdWKy7Xxs8wr9JFeu4ioN5jSZWUXuuGtEd6Cl
	 CCMNpacI0piTaP6oj8dLwYr0Q9s2ZbZuL8q0lDeZOUh53rJLmlKt00fsxUCrOkTvd3utbbRA09EXR
	 q22YlOFFUVDNvtHFy0LzEi6f3c9jZsOK34FYUDLWr2avoGfnlcSFvpxriZBvxtK3CsV2toP3ohc8y
	 NMr0xO1FEC1hRQsL77+9TGn1IKzFmrjJJbkuQS4DIcFfsC5fXcYtBCnC/y355xwQqk95Ic+wvYhYN
	 as5k0cJeG2my4Jt7nJ6eEx/rYbxpgRw5gK4DODp4ef2+JhCC1cgOW3at0NnbaX0f450vYnOJHZEBU
	 HRoPJhcnehr04GJlF3dwm1u3UCTrR3iDsI5b57xBHS3Aw+ZocdVTg9dcE/M2hyvEV8Hc9ZGCS1eXg
	 onxDMmUiVaEXvBtajFT5QG0P+nx0d2HHMnE7cURCbigcGOWiCt1GLo+jsbEua2PJZlr7qnaVKSEbf
	 1i9qJJwVhsoLAP1jhHQzWj1nNX9WYsvWLk6T5wFS+mI9dsL6xI77tQvxdJFZ1pPERKAYtrirzDYJO
	 fpiPE+5B/T4uxxl4WF2yiIWequDXJkDxKHdZr
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?SmFrdWIgS2ljaW5za2k=?=" <kuba@kernel.org>
Cc: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?T2xpdmVyIEhhcnRrb3Bw?=" <socketcan@hartkopp.net>, "=?utf-8?B?RGF2aWQgUy4gTWlsbGVy?=" <davem@davemloft.net>, "=?utf-8?B?RXJpYyBEdW1hemV0?=" <edumazet@kernel.org>, "=?utf-8?B?UGFvbG8gQWJlbmk=?=" <pabeni@redhat.com>, "=?utf-8?B?U2ltb24gSG9ybWFu?=" <horms@kernel.org>, "=?utf-8?B?Sm9uYXRoYW4gQ29yYmV0?=" <corbet@lwn.net>, "=?utf-8?B?U2h1YWggS2hhbg==?=" <skhan@linuxfoundation.org>, "=?utf-8?B?UmFuZHkgRHVubGFw?=" <rdunlap@infradead.org>, "=?utf-8?B?V29sZmdhbmcgR3JhbmRlZ2dlcg==?=" <wg@grandegger.com>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, 
	"=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>, "=?utf-8?B?bGludXgtZG9j?=" <linux-doc@vger.kernel.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>
Subject: Re: [PATCH net v8 00/10] can: fix Rockchip TX stalls and bus-off restart/close races
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Tue, 10 Nov 2026 11:05:37 +0800
X-Priority: 3
Message-ID: <tencent_F59D327809C523BE014488357EEF4D163408@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261108-rockchip-canfd-restart-close-v8-0-3e7a23fd9eae@qq.com>
	<20261109112402.283c16a3@kernel.org>
In-Reply-To: <20261109112402.283c16a3@kernel.org>
X-QQ-mid: xmsezb41-0t1794279937tom1cqfol
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_190544_578032_1EEEA530 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgo+ID7CoFN1YmplY3Q6wqBbUEFUQ0jCoG5ldMKgdjjCoDAwLzEwXcKgY2FuOsKgZml4wqBS
b2NrY2hpcMKgVFjCoHN0YWxsc8KgYW5kwqBidXMtb2ZmwqByZXN0YXJ0L2Nsb3NlwqByYWNlcwo+
Cj4gcGxlYXNlwqB1c2XCoGdldF9tYWludGFpbmVyLnBsLMKgZG/CoG5vdMKgQ0PCoG5ldGRldsKg
b27CoENBTsKgcGF0Y2hlc8KgZGlyZWN0bHkuCgpJIHVzZWQgYjQgcHJlcCAtLWF1dG8tdG8tY2Ms
IHdoaWNoIGludm9rZXMgZ2V0X21haW50YWluZXIucGwuClRoZSBzZXJpZXMgbW9kaWZpZXMgRG9j
dW1lbnRhdGlvbi9uZXR3b3JraW5nL2Nhbi5yc3QsIHdoaWNoIG1hdGNoZXMKRG9jdW1lbnRhdGlv
bi9uZXR3b3JraW5nLyB1bmRlciBORVRXT1JLSU5HIFtHRU5FUkFMXSBhbmQgaXMgbm90CmV4Y2x1
ZGVkIHRoZXJlLCBzbyBuZXRkZXZAdmdlci5rZXJuZWwub3JnIHdhcyBhZGRlZCBhdXRvbWF0aWNh
bGx5LgoKSSB3aWxsIG1hbnVhbGx5IHJlbW92ZSBuZXRkZXZAdmdlci5rZXJuZWwub3JnIGZyb20g
Q2MgZm9yIHRoZSBuZXh0CnJldmlzaW9uLgoKQmVzdCByZWdhcmRzLApDdW5oYW8gTHUKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
