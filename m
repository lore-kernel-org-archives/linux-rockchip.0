Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F2C6C44500
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 22:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edMhA1DD/0XqtuxSEkxq2oKDJ3mO19MYDdtzXl+zVnU=; b=Ei9758YTyqKnDY
	dbFsK5GEzb8c0W0aRB09d56IjC+n2NyI6nGOVWu+jrKg/7R3qmLVRTfhKsVsJ8LArqnd3Of0rUAWN
	FAfjy3bGlpMvxy2T6IvvjELCOV1Ui+mZ2lJwOMjd8CxEMB7VCxznXDHcP8riXI2VGCn7s9O6I8s4z
	KZW37YlejYOVb7ILDEMamraSbQgunfadAqJsUgxk5zq4QaSpO5vqKzFOKwNB4YNuyz8JS8g3g/NUN
	sIsVMtOEKESbPLc403LFICm+e609H8yZrjfLY3Y7mDCrR4KZaI0lWpSZzBClWxIukQ+5HV09zuQ03
	/e40gZprRQeTQlz6mvYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegdR-00000000Hr1-2OyH;
	Tue, 30 Jun 2026 22:08:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegdO-00000000HpZ-0OnX
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jun 2026 22:08:51 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UJDpb72838595
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 22:08:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X1ZxiCoDe6QCyz0498GlQmGlGSpLwZNnkWsIqh3kavo=; b=YjdrKYpVqZ8H9XAX
	ibF7vH/kUADBSYjVGZClU63lnyKF8JVv5GZII67PEhUmScSfLZEtlySCd/8RXj6x
	o+rkx6Eto9cTsN3V7OIW3H3NJVDGsBpAi4uBgzMTXdfS8EGc3015nJ1/UL2kEZ4+
	BA9iwT1xYJSu51qvtJlUaI7KWY9mpv+Zf/4q7MA6Zp7fhxha5a52zn6FeCol17DP
	00t0lcWini3dby7PAFSuxWS4FE74H/bGbkax08nYfIc7ANpPU3ABvUKZKfwTZ7uA
	3ZIoFEoYf5v4XPixYIG36bcjUj9HG8lp6iaVzz8ebgdDiRlDt/46JVeyX2EfpF/f
	aeUJpA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4hbd1g19-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 22:08:49 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8e9489f62bfso320426d6.2
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 15:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782857328; x=1783462128; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X1ZxiCoDe6QCyz0498GlQmGlGSpLwZNnkWsIqh3kavo=;
        b=FRINyNfOvzBlDlRJtG+bEGfATaG7O8/yFSEW+JW/6U8g0s3hGynb4c8UszIVcEzQYu
         NxplCYj1d1McaM/6o/ZWdkzdBnhF0dGpSORowbmnUCuFGigWbBlh94tMXt88gskOvUVX
         Ru3GEBt9YRj2TyT2ccbbepHYz50td+z42v1buJy9JgPD72q/mLzm9O5wctBCV+bl0GDc
         YK0irVnNNXZVJFePJ/6V6j02nPENgktCnrvtktojB2Fnd1bXQKuLCOytNqle0vGF003/
         7qGZGBF7OdHImOPQk3yUYscciCwZ5KxNG6KbjKtcBYGT0ijuFio1b1oOTn3xDDCNFC0M
         8dWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782857328; x=1783462128;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X1ZxiCoDe6QCyz0498GlQmGlGSpLwZNnkWsIqh3kavo=;
        b=c8MOVGItaRioWEVYOuYephem66e6lJ2O8ihWs8MPnSeXbVBGNm1hty3uYEIckrBbWP
         EZuuEIM4X94TezPbBPUgn56njE+vs1bEZHEGO3e+379P/oN54xijeIYT0sh5s3YRyZ86
         zTSD1v2wEfNyM0de8FtIVOhWkkeXa4ZxmWaxj0qw2pOKnpGVD3RDjKMmMYDTQBZ/8RnY
         VQ79XgByB1/9olvN1PDCYOaTGpQt2SNy8EK3LIalJX35/9yM93Jvu8P3+qyKQkN4vwls
         6NzdAwPIQcJLVH7cbr2dHHHRunqsTFoBxmv5X3uclRKj7TyQze1zURJADTwDGMINWlQW
         oNdQ==
X-Forwarded-Encrypted: i=1; AFNElJ/eo2tWVngkPoBnoiJObYj+Ds7X6rnprRMowpAEhItNFW3pYYnVSNYEkuVRko6TS+MPMxvPooZp8tGBiUfrsQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyVCYWOQbREyvStdJ8gsqbdzUc683Sz6CwW68FhnyUGOzkhxEq5
	RhfiM60HE3uxHFZwQmUky0L3ROUqoXeEqMWNO/KgJGO+OhmVu3jiZ75hMy0140CpMPlxIydOn3k
	Sv0oiOx02rBk5urBJV3IskNCChDkVJruSOC1JXeeTTRrksrfuAU1mBRoP7L+lSDOeGgoz3GMmBY
	4=
X-Gm-Gg: AfdE7ckFho8VPHU9IhRLniUDJxJAbmCFbM04bPow40BQM9Z6+vgYXtRrhZu7N4Ny3a0
	ET1EwByZmMXoIHqxYuLUuyWb4IKcU2PJPsCkUMi7xMWrTAzbg3V1XdYdOIPT7pe2EoZG+uohmeM
	9YPYqy/WeMj6IYgITi8mEhp1lmpX10d/1cYGGTvedoU9O+HkMEBFPHSwQDAY2Ayc+odjEH130NZ
	qrjhmlNI+utN+KO+0sxjRq23jY0LX+g94HVyocFwMyXZa4K4rcxViP0GHjBrzxvpW6wZLA5e2Xw
	gjzw0IQqGinhe9hTUmgqrW8Zx15Dw4CJjZMBsDDByvWD9p3AYziwbCMzXZLbmIzPo8ALCKVcckG
	bqxMahSzEy6o57Se0fiyIBxIqo8oRliTHSQ9SMvg5/c7OG9m2xLzSVSSUCS1BLA==
X-Received: by 2002:a05:620a:4511:b0:915:8502:f7fe with SMTP id af79cd13be357-92e6d7dc6cemr404387085a.15.1782857328358;
        Tue, 30 Jun 2026 15:08:48 -0700 (PDT)
X-Received: by 2002:a05:620a:4511:b0:915:8502:f7fe with SMTP id af79cd13be357-92e6d7dc6cemr404382285a.15.1782857327863;
        Tue, 30 Jun 2026 15:08:47 -0700 (PDT)
Received: from [192.168.69.212] (88-187-86-199.subs.proxad.net. [88.187.86.199])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493be4d9daasm28380565e9.9.2026.06.30.15.08.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 15:08:47 -0700 (PDT)
Message-ID: <6bcfcfca-aee3-42cf-baba-9a926ef26471@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 00:08:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/13] sh: replace linux/gpio.h inclusions
Content-Language: en-US
To: Arnd Bergmann <arnd@kernel.org>, linux-gpio@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <brgl@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Frank Li <Frank.Li@nxp.com>, Robert Jarzmik <robert.jarzmik@free.fr>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Greg Ungerer <gerg@linux-m68k.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>,
        Yoshinori Sato <ysato@users.sourceforge.jp>,
        John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
        Linus Walleij <linusw@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
        Dominik Brodowski <linux@dominikbrodowski.net>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com,
        linux-m68k@lists.linux-m68k.org, linux-mips@vger.kernel.org,
        linux-sh@vger.kernel.org, linux-input@vger.kernel.org,
        linux-media@vger.kernel.org, netdev@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-5-arnd@kernel.org>
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@oss.qualcomm.com>
In-Reply-To: <20260629132633.1300009-5-arnd@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDIxNiBTYWx0ZWRfX7h7Wqf4Zh5jT
 RXI8SJohNSAoSObJfQVzWYLDiQna9hjmUu9sH/6Xd4Zc2fFkqzpA6JCuV97CLeVzXPg+L4SAukt
 5eHvDjXzj6S4+pALJwsH+P1yLs3ales=
X-Authority-Analysis: v=2.4 cv=MpJiLWae c=1 sm=1 tr=0 ts=6a443e71 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=4s3hRJSeHn4rkQlkrse1kQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=M51BFTxLslgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=LfsA7Cq2GQzuzbZ-N0YA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: OnA2Gsb-YvXdxBl6JDxOUtqTjLiSEIFU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDIxNiBTYWx0ZWRfXwQ697IM8aoCS
 MYMQNTETNZKU4bzGA+7Qz/XICvHDCXRFWH/uTUjcg8WwNMxXJDGJ5mWflx3Gc+HPdgn77ASfha0
 +5pbSR8pbxFiTfPAJqBmo4vFY5ybh2kOx3XtsrtTIv8n+ZwMttFEuxml0A24gsosL80cBzzl2WK
 UZ9VL7JgasDfv8gwJ6WoKz7kLLSgJ4LCXSRddgXgxHY0hXWciVUi/z5zgPynmBnbEhLaNI2+jLN
 ttxwPYU7sNMGbO4bqt2jDLiqdu6/HblaBP0J4ihZf3uUo8Fj3iq5mgGdBgYpcdoCPq8ZkUUwssf
 azlaQ2Mpdsi/wEVOr5gqsTxXaUMObu/toG2Mk7AQvSFIj2Z/PacQ8MECbOpfDTt7dXXqvGpnGcC
 gL32unDI3MJqB2hAh8sGjHrsS+SFT7/Z/3aCDUWp9MW29XDHiavhvwyHazzJXugPQGKBy8pt7Ma
 HLVfUXPgYcnyMZcOmpA==
X-Proofpoint-GUID: OnA2Gsb-YvXdxBl6JDxOUtqTjLiSEIFU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_05,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1011 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606300216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_150850_141245_0D5581EE 
X-CRM114-Status: GOOD (  13.80  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjkvNi8yNiAxNToyNiwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiBGcm9tOiBBcm5kIEJlcmdt
YW5uIDxhcm5kQGFybmRiLmRlPgo+IAo+IGxpbnV4L2dwaW8uaCBzaG91bGQgbm8gbG9uZ2VyIGJl
IHVzZWQsIGNvbnZlcnQgdGhlc2UgaW5zdGVhZCB0bwo+IGxpbnV4L2dwaW8vbGVnYWN5LmggZm9y
IHRoZSBzaCBib2FyZHMgdXNpbmcgdGhlIGxlZ2FjeSBpbnRlcmZhY2VzLAo+IG9yIHJlbW92ZSBp
dCB3aGVyZSBpdCBpcyBub3QgbmVlZGVkIGF0IGFsbC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBcm5k
IEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+IC0tLQo+ICAgYXJjaC9zaC9ib2FyZHMvYm9hcmQt
bWFnaWNwYW5lbHIyLmMgICAgICAgICAgICAgfCAyICstCj4gICBhcmNoL3NoL2JvYXJkcy9ib2Fy
ZC1zaDc3NTdsY3IuYyAgICAgICAgICAgICAgICB8IDIgKy0KPiAgIGFyY2gvc2gvYm9hcmRzL2Jv
YXJkLXVycXVlbGwuYyAgICAgICAgICAgICAgICAgIHwgMiArLQo+ICAgYXJjaC9zaC9ib2FyZHMv
bWFjaC1hcDMyNXJ4YS9zZXR1cC5jICAgICAgICAgICAgfCAyICstCj4gICBhcmNoL3NoL2JvYXJk
cy9tYWNoLWVjb3ZlYzI0L3NldHVwLmMgICAgICAgICAgICB8IDIgKy0KPiAgIGFyY2gvc2gvYm9h
cmRzL21hY2gtaGlnaGxhbmRlci9waW5tdXgtcjc3ODVycC5jIHwgMiArLQo+ICAgYXJjaC9zaC9i
b2FyZHMvbWFjaC1rZnIycjA5L2xjZF93cXZnYS5jICAgICAgICAgfCAyICstCj4gICBhcmNoL3No
L2JvYXJkcy9tYWNoLWtmcjJyMDkvc2V0dXAuYyAgICAgICAgICAgICB8IDIgKy0KPiAgIGFyY2gv
c2gvYm9hcmRzL21hY2gtbWlnb3IvbGNkX3F2Z2EuYyAgICAgICAgICAgIHwgMiArLQo+ICAgYXJj
aC9zaC9ib2FyZHMvbWFjaC1taWdvci9zZXR1cC5jICAgICAgICAgICAgICAgfCAyICstCj4gICBh
cmNoL3NoL2JvYXJkcy9tYWNoLXJzay9kZXZpY2VzLXJzazcyMDMuYyAgICAgICB8IDIgKy0KPiAg
IGFyY2gvc2gvYm9hcmRzL21hY2gtcnNrL2RldmljZXMtcnNrNzI2OS5jICAgICAgIHwgMSAtCj4g
ICBhcmNoL3NoL2JvYXJkcy9tYWNoLXNlLzc3MjQvc2V0dXAuYyAgICAgICAgICAgICB8IDIgKy0K
PiAgIGFyY2gvc2gvaW5jbHVkZS9tYWNoLWNvbW1vbi9tYWNoL21hZ2ljcGFuZWxyMi5oIHwgMiAt
LQo+ICAgYXJjaC9zaC9rZXJuZWwvY3B1L3NoNGEvc2V0dXAtc2h4My5jICAgICAgICAgICAgfCAy
ICstCj4gICAxNSBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMo
LSkKClJldmlld2VkLWJ5OiBQaGlsaXBwZSBNYXRoaWV1LURhdWTDqSA8cGhpbG1kQG9zcy5xdWFs
Y29tbS5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
