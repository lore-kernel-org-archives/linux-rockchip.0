Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627FE606A31F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 11:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UN3n3xG8;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=PcvDx0Dq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNh57R9d2Oa3dwvSrHA6475ilpNWMGhNKdQhrD06ih4=; b=UN3n3xG84oGaA4
	eXopwIa+rqG6sWCou20xuBDCqworiwUxhdLqqwcEwvNDwB/kgOFqZREnXgKE/x+AMPo5FbW/t7nXT
	jnM2lMNXvQz4dUZXYfwj60w876SvDRI9FVo4e+xZBv5lrIWDWxj0BA2hLgS2t+a9/D0oefJpu0sXb
	NUqJcl3nBCXuYLnOz+5Ljf1cbl6jX7WVWpqsfI5iiH5n3nQhCTPVlrzxxF6bk6+Nc+bMXKrM0JYtz
	QTQ8Rvrx2FQnxnXPjwOjiR6BnNi/Nmeja1yQ9BPYdg/EVtCUXcdjzJhzjC38kUdw/BkcXC0+L4wxM
	cx0yEeNbQqEFfRuFYiWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ8FH-00000009ZnF-20Qc;
	Tue, 20 Oct 2026 11:43:07 +0000
Received: from mail-m127209.xmail.ntesmail.com ([115.236.127.209])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ8FD-00000009ZlB-2gMD;
	Tue, 20 Oct 2026 11:43:06 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 51b70239a;
	Tue, 20 Oct 2026 19:42:46 +0800 (GMT+08:00)
Message-ID: <0a3dc505-43d2-471b-bd7c-222860544081@rock-chips.com>
Date: Tue, 20 Oct 2026 19:42:45 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/14] drm/bridge: analogix_dp: Use bridge->next_bridge
 instead of plat_data field
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, kernel test robot <lkp@intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20261019085836.3065008-12-damon.ding@rock-chips.com>
 <202610201309.w3JSXlP5-lkp@intel.com> <3789853.R56niFO833@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <3789853.R56niFO833@diego>
X-HM-Tid: 0aa1591f009e03a8kunmb99823d738c545
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUhXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZShkaVktIQh9IGUsaSRgZTVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0JMVUhJTE
	1CVU9VSEtLSlkG
DKIM-Signature: a=rsa-sha256;
	b=PcvDx0DqHkOKPqjTQ+WfmUYCXD9mwvhFrc7mSaBffIry2c4fUYbdXMX59bNKWZBcDiTaCQ/YNMiQcmhD7Zsd1KQbLmtLq7Ltd9XK3HumvYifhWq4A4Ftt4y/jY42N+ztDwlpKKLycWUI8mg322eGJ0P3DLzIVv1imnkclT3bR5E=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=0fP5WnkQ/jEXyj1gQYTYNTXqYm8pVqxjqPzKb7O0M40=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_044304_227901_2BE7D652 
X-CRM114-Status: GOOD (  12.33  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSGVpa28sCgpPbiAxMC8yMC8yMDI2IDY6MzggUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+
IEFtIERpZW5zdGFnLCAyMC4gT2t0b2JlciAyMDI2LCAwNzozNjoyMSBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIGtlcm5lbCB0ZXN0IHJvYm90Ogo+PiBIaSBEYW1vbiwKPj4K
Pj4ga2VybmVsIHRlc3Qgcm9ib3Qgbm90aWNlZCB0aGUgZm9sbG93aW5nIGJ1aWxkIGVycm9yczoK
Pj4KPj4gW2F1dG8gYnVpbGQgdGVzdCBFUlJPUiBvbiBkcm0tbWlzYy9kcm0tbWlzYy1uZXh0XQo+
PiBbYWxzbyBidWlsZCB0ZXN0IEVSUk9SIG9uIGRybS9kcm0tbmV4dCBuZXh0LTIwMjYxMDE5XQo+
PiBbY2Fubm90IGFwcGx5IHRvIGRhZWlua2ktZHJtLWV4eW5vcy9leHlub3MtZHJtLW5leHQgbGlu
dXMvbWFzdGVyIHY3LjNdCj4+IFtJZiB5b3VyIHBhdGNoIGlzIGFwcGxpZWQgdG8gdGhlIHdyb25n
IGdpdCB0cmVlLCBraW5kbHkgZHJvcCB1cyBhIG5vdGUuCj4+IEFuZCB3aGVuIHN1Ym1pdHRpbmcg
cGF0Y2gsIHdlIHN1Z2dlc3QgdG8gdXNlICctLWJhc2UnIGFzIGRvY3VtZW50ZWQgaW4KPj4gaHR0
cHM6Ly9naXQtc2NtLmNvbS9kb2NzL2dpdC1mb3JtYXQtcGF0Y2gjX2Jhc2VfdHJlZV9pbmZvcm1h
dGlvbl0KPj4KPj4gdXJsOiAgICBodHRwczovL2dpdGh1Yi5jb20vaW50ZWwtbGFiLWxrcC9saW51
eC9jb21taXRzL0RhbW9uLURpbmcvZHJtLWJyaWRnZS1hbmFsb2dpeF9kcC1SZXR1cm4tYml0bWFz
ay1mcm9tLWFuYWxvZ2l4X2RwX2dldF9pcnFfdHlwZS8yMDI2MTAxOS0xNjU4MjMKPj4gYmFzZTog
ICBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL21pc2Mva2VybmVsLmdpdCBkcm0t
bWlzYy1uZXh0Cj4+IHBhdGNoIGxpbms6ICAgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAy
NjEwMTkwODU4MzYuMzA2NTAwOC0xMi1kYW1vbi5kaW5nJTQwcm9jay1jaGlwcy5jb20KPj4gcGF0
Y2ggc3ViamVjdDogW1BBVENIIHY0IDExLzE0XSBkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogVXNl
IGJyaWRnZS0+bmV4dF9icmlkZ2UgaW5zdGVhZCBvZiBwbGF0X2RhdGEgZmllbGQKPj4gY29uZmln
OiBuaW9zMi1yYW5kY29uZmlnLTEwMDAtMjAyNjEwMjAgKGh0dHBzOi8vZG93bmxvYWQuMDEub3Jn
LzBkYXktY2kvYXJjaGl2ZS8yMDI2MTAyMC8yMDI2MTAyMDEzMDkudzNKU1hsUDUtbGtwQGludGVs
LmNvbS9jb25maWcpCj4+IGNvbXBpbGVyOiBuaW9zMi1saW51eC1nY2MgKEdDQykgMTEuNS4wCj4+
IHJlcHJvZHVjZSAodGhpcyBpcyBhIFc9MSBidWlsZCk6IChodHRwczovL2Rvd25sb2FkLjAxLm9y
Zy8wZGF5LWNpL2FyY2hpdmUvMjAyNjEwMjAvMjAyNjEwMjAxMzA5LnczSlNYbFA1LWxrcEBpbnRl
bC5jb20vcmVwcm9kdWNlKQo+Pgo+PiBJZiB5b3UgZml4IHRoZSBpc3N1ZSBpbiBhIHNlcGFyYXRl
IHBhdGNoL2NvbW1pdCAoaS5lLiBub3QganVzdCBhIG5ldyB2ZXJzaW9uIG9mCj4+IHRoZSBzYW1l
IHBhdGNoL2NvbW1pdCksIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZ3MKPj4gfCBSZXBvcnRlZC1i
eToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+IHwgQ2xvc2VzOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9vZS1rYnVpbGQtYWxsLzIwMjYxMDIwMTMwOS53M0pTWGxQNS1sa3BA
aW50ZWwuY29tLwo+Pgo+PiBBbGwgZXJyb3JzIChuZXcgb25lcyBwcmVmaXhlZCBieSA+Pik6Cj4+
Cj4+ICAgICBuaW9zMi1saW51eC1sZDogZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9h
bmFsb2dpeF9kcF9jb3JlLm86IGluIGZ1bmN0aW9uIGBhbmFsb2dpeF9kcF9hdXhfZG9uZV9wcm9i
aW5nJzoKPj4+PiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2Nv
cmUuYzoxNjY5OigudGV4dCsweGI4MCk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGRldm1fZHJt
X29mX2Rpc3BsYXlfbW9kZV9icmlkZ2UnCj4+Pj4gZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFs
b2dpeC9hbmFsb2dpeF9kcF9jb3JlLmM6MTY2OTooLnRleHQrMHhiODApOiByZWxvY2F0aW9uIHRy
dW5jYXRlZCB0byBmaXQ6IFJfTklPUzJfQ0FMTDI2IGFnYWluc3QgYGRldm1fZHJtX29mX2Rpc3Bs
YXlfbW9kZV9icmlkZ2UnCj4gCj4gSSBndWVzcyB0aGUgUm9ja2NoaXAga2NvbmZpZyBmb3IgdGhl
IEFuYWxvZ2l4LURQIGFsc28gbmVlZHMgYQo+IAo+IAlzZWxlY3QgRFJNX09GX0RJU1BMQVlfTU9E
RV9CUklER0UKPiAKPiBzaW1pbGFyIHRvIGV4eW5vcyBhbmQgaW14Lgo+IAoKV2lsbCBmaXggaW4g
djUuIEFsc28gcmVmaW5lIHBhdGNoZXMgOS0xMyBhcyBzdWdnZXN0ZWQgYnkgc2FzaGlrby4KCkJl
c3QgcmVnYXJkcywKRGFtb24KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
