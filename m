Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C82E1C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 14:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdJoefQzk5JpoLT95E17uWCzIzI5TdkTN7H36LbwRiU=; b=QiR/Wg5FSOERw5
	lf4JnB2ZvHwItgyB2/jqPNTq+VvPVs136LJxc/vYuUpGyNF1TGnl6iVo0CugSyXbmyWsRzXG2gOZg
	ohobTHzS8m+pQVozlkXMIX/YfsiAJwEL+Gj0ZUbQB18hLUp16ZKwyMTvqhHbPiLpD4n9HwjyX4tcY
	qyq2M4jbdhFkbqTuy2XRVg+XCNXwwvZTOXP7A13z6+DyVYQUAQM2DcT0K4RqiPiBbpiD6N+lNEvwM
	qw4/SyRKjjKcYM9dHiyfdi7F3u1gkok+QKpCX9ddvatC6I4z7udWGHRQjA0hGEOBwJ2+Nl8fap22J
	1w5Yrvj1Z79Xs7DLFGtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKhiD-00AzXt-5a; Thu, 17 Feb 2022 14:24:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKhKs-00ApIM-BF; Thu, 17 Feb 2022 14:00:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id B0F181F45C8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1645106440;
 bh=ssJasQQ8weULUqHF5Y87VL+8ytcuA+D5QpQWHyuRV2k=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=e+8D2NrfmVm3obXlqpX0Z6PwoRJRYhkdF5E7yreEMnY4/q4bLQZcy6CW0m6BTinMu
 49KQmGTnQMM79aBTQQUP8VvzCuJK4AC8qouh9Fl625xa9Z5muNHnT4xOwa/lWtykqR
 eiDNDtCPiXivs71Bs+sSQfP+9J93HvG8hMTWWSCy5LarVdWD2xqWn1Jj9lPu7hN5+k
 nC9BorluLt0D+ovNoo+kFNk/24cJRyLUn/dHx1sIWIughQbk5qjoud8EM8w/6VbnhN
 IjKvG8oP2nZhLA5HC5qn8kLrvPggf/R2UUBfQhhK4uEGwK8OudORHZujtQjjRt6pU9
 Yh4JvrQPU7aGg==
Message-ID: <f5abe6aa-473a-a00d-2bc5-b8a1d0560d1f@collabora.com>
Date: Thu, 17 Feb 2022 17:00:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 13/23] drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Yakir Yang <ykk@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-14-s.hauer@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217082954.2967889-14-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_060042_703755_8D747B93 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

MTcuMDIuMjAyMiAxMToyOSwgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4gRnJvbTogRG91Z2xh
cyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+IAo+IEppdHRlciB3YXMgaW1wcm92
ZWQgYnkgbG93ZXJpbmcgdGhlIE1QTEwgYmFuZHdpZHRoIHRvIGFjY291bnQgZm9yIGhpZ2gKPiBm
cmVxdWVuY3kgbm9pc2UgaW4gdGhlIHJrMzI4OCBQTEwuICBJbiBlYWNoIGNhc2UgTVBMTCBiYW5k
d2lkdGggd2FzCj4gbG93ZXJlZCBvbmx5IGVub3VnaCB0byBnZXQgdXMgYSBjb21mb3J0YWJsZSBt
YXJnaW4uICBXZSBiZWxpZXZlIHRoYXQKPiBsb3dlcmluZyB0aGUgYmFuZHdpZHRoIGxpa2UgdGhp
cyBpcyBzYWZlIGdpdmVuIHN1ZmZpY2llbnQgdGVzdGluZy4KClRoZXJlIGFyZSBubyBkZXZpY2Ut
dHJlZXMgdGhhdCB1c2UgInJvY2tjaGlwLHJrMzI4OC1jcnUiLCBBRkFJQ1MuLgoKV2FzIHRoaXMg
Y2hhbmdlIHRlc3RlZCBvbiBhIG5vbi1SSzMyODggZGV2aWNlcz8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
