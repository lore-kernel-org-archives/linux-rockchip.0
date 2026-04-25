Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87B6EFF885A
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 21:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GwqlH498HY7EiTM0xBH28/GSyG9uZCg+7dDn1/QtXg=; b=ZQDHV/mfuTErRP
	ALDsRLU0MQzBGT4Qe88o4JqpnQmtgvZ4U/DeweDUt2HLT5NFG6AcRfhM6nzP83kVx87wzlgyVhz1T
	j5j+yu8T9yyE7XJ+T7hu8ZCsijI4rnQ0kFenpL559q1/ZIhtRYZh/oPVkUdMxvZ5nofx8/xFLerVk
	mOgy2iIOxVTHmFAT58MLxBt/cBYUhSLqFWH5r9dyxhi4ZLN9f3UX41rPRJyu8/BN1UxGHOhRUXq4J
	H0IOzSwI2i8Ql1j1doJTxEKgY7ne8NeD4EvpHvI8xqxr/Ow0IK2xY2zlc+ySji9z7SCWSuzJYsmAA
	s5hIY1Mn9Jel8KiYjyVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGkoG-0000000EqEf-3mHX;
	Sat, 25 Apr 2026 21:45:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGkoD-0000000EqDe-2WBk
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 21:45:07 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63PGNGFQ2933355
	for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 21:45:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	f7RZGJSN3+WAdtDl5rsnVh3J53kF5urGcCMS3HU8Vss=; b=HCc64IYQood0E5bQ
	AlFPx6OvkHkwa+Zof3Wz+yWMy1ecMhIpTttSv863tnJO2Db2vapgafoxrbmZjuUZ
	cwdDVCrC/Frfl93m9h4MUzmOfwvZC2qJTx6ym8tsyHw0/6C7yw8cTVlPL5bbfDc6
	vkzmdJgS0n7UaX7uYhdzTQ+szOdQ5oK/llQzHTIwzKZTv0ZgSOhNY7mp2OL1g1fg
	rTJ1U9wQVHHhZMh0SpHMwKBaeAy19RzUr3Y/5tT/TVwnxFcvLkmeXDU2sgOJxWh5
	IIjHZuSc5Msh9NOQkUH/T7Eed7QhvkYImpDZn7jyf2y5DRz7W3XOrK9QpNu2Yx+Y
	CKaa3g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drnmr1rfb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 21:45:04 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50d8e8c47a3so239628591cf.0
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 14:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777153503; x=1777758303; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f7RZGJSN3+WAdtDl5rsnVh3J53kF5urGcCMS3HU8Vss=;
        b=PcZ5FsDooIUopBpvcMXxns/8j/nliGEEMgi9J9WOMX8cwgFb34fhIJwCaXk8NOBDEM
         fyc5e9utxdnyIaXs19nj0OnzZW0gKf0I1QkZD+2S6mauJ50c4ncFyhIxJhJYfhrb8ljr
         pHZIqpiWMnTa3fmtcYNTW1C4yHmmwj62J0i78V1FFNSgwLWVvMGz+4T1d+yD7AvwuWnO
         G7DlVXW0jT83oaf8PKVmJjfdheikG87p2nOdLzzQgWzNM3nEg8TBCWer0oh0S6W4uIN/
         jDTGNftfzhD9nbVRGw4pBRQ8wmG+vJZ+E+WRZA583F51oNfptrzsUdVQfziyMpQbrocp
         wHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777153503; x=1777758303;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f7RZGJSN3+WAdtDl5rsnVh3J53kF5urGcCMS3HU8Vss=;
        b=AziY8ERmS5MIXckkVhDul92RRYCS34F1YrLIOzL4BSMARmRiwAe0DlTMe5UrkZYGne
         9WYpKBQde4WJZNPMveV/LI2ZUihJwFVB/uXkIA114VGJbwSBMT1p1R01klF5e2WLwTqt
         gu0xwwu4meVQ4HFQlbZX+XM3DLBCmp9t5SfERIRJuUVpE6zTzN+18WpW3X3U4Szujjma
         gfMp2XqkO2mINsGtx7N6uniZrylToAlbAicaXystI/sfDRLDNHCoWudS/ExjDxEdovnJ
         QcJPQF55cwCGXe+jbmIhJ2J+558LzmQya7tSMSsoGku4gobGuJ4RI7fl+OO6jBpG+Rg0
         frvA==
X-Forwarded-Encrypted: i=1; AFNElJ8QPYaXewKn6r33ZrsHEsrsOwJknAz3Eh4/0+FMzafGdFwJxHlgBo/rNaVvIVMujfXuFKCABOd5zb6GTBrSGw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxl739IjrFW9kSbgIVgVqqgF2FsEuXIWUQ4WLExODcmMetsV+Dp
	M/CFrfhkOl+cUokByY8p0sswKtLkylS7yfPiqAOgqC2lYsJSDApH54bhN1/u/cFDVj4wX6JW0mA
	2KNB/M3OLVYWmbugB7eN5rbcksPb1TC6V18k5SJ+MJxx9xhmEIsIh27tlhIwr7OCsw3++g3s47z
	o=
X-Gm-Gg: AeBDieu/jWChDWwmsdrVQd9cYJCoJ8OCNV6XkgeJUFjs0giaAPyskld1G+8YxUdvPgN
	4QCEMt0ZRSRxc41EqLf1HQfjvc0g1iNjZDZKR8Ut0pCei+uOHB6TxIJdvgM99eV2+lvAqBy45Ko
	BdGTUfmnpaXDo4IWb8Qcjc5K9jZe4JIvtb5QxOjzi+6w8KOliEqM90YXiwn5FktJD4MvkHfgdEL
	A8Z/fAS3MIMwNIEGZPaPAZjJSLL4Cx1daRj1h1hng+pMCqdj2rBF3RMROJHk/MAa+Gffxtn2EAQ
	oq97cNZyQEcSs/W722vOmjdZoXaX6uYTuXaN7hmtNR+7yUE61Qr36uW4PG6l0f9FYIcYePWzF6W
	S7YW+8opEN+1ab8HiN21ZfY+Wew53seS/csQJmh7ZOoG+YTcbmS5JCXxo0JPs0O6rRals+YFPXI
	dFsFh1B9jHJuXmj/rujyvB2OM4bRWIddLUi0mOSaTP4OdOyw==
X-Received: by 2002:a05:622a:1f0d:b0:50d:aae1:7070 with SMTP id d75a77b69052e-50e36c56a1dmr524175411cf.48.1777153503564;
        Sat, 25 Apr 2026 14:45:03 -0700 (PDT)
X-Received: by 2002:a05:622a:1f0d:b0:50d:aae1:7070 with SMTP id d75a77b69052e-50e36c56a1dmr524174881cf.48.1777153502621;
        Sat, 25 Apr 2026 14:45:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a4185ad0c5sm7017077e87.10.2026.04.25.14.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 14:45:01 -0700 (PDT)
Date: Sun, 26 Apr 2026 00:44:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dennis Gilmore <dennis@ausil.us>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@gmail.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 3/6] drm/bridge: simple: Add the Lontium LT8711UXD
 DP-to-HDMI bridge
Message-ID: <ur7mow4lw47ylxj3uigwwasrfywe6n42zb2to7ygeyjlkcgfkf@guzkembyy5hc>
References: <20260425031011.2529364-1-dennis@ausil.us>
 <20260425031011.2529364-4-dennis@ausil.us>
 <20260425112844.GB2964234@killaraus.ideasonboard.com>
 <45evt7lkzuykoqsc2z27hsvm7fasmn6sr6gbjtdnme54jauehf@dmvon2o5emzd>
 <CAABkxwt1=n=CnrVfCcw+EHjqjfsLkp67POk451fV8Gqw4vdnQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAABkxwt1=n=CnrVfCcw+EHjqjfsLkp67POk451fV8Gqw4vdnQw@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=aqCCzyZV c=1 sm=1 tr=0 ts=69ed35e0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=c7CpEUyHu0UMHcTobk4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: MSKbqICeJ3K3_gB7pE2Hgj018iTKkIiV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI1MDIyNyBTYWx0ZWRfX/Ht3o3mebJ1h
 bC/cvUfmWZG2CQ+00ldTeMBdx2s3EesjCNx3a11aEM/ACEAWHComDVK46LaWmD0A1mSIHT5H4BQ
 VGJ0rw9lFOBJLEIpNVwQhFbvlv3xrxLrKJ1NipIKk7+SZVc5X8iK+qesmaQ0mnDcG9UCwDm8+Q/
 s0zikRqDMkzP4HQjjc3iyozzcaebqW2HkE44z3cyMhZ7GewCmhCrk2L1KEtaiOHa/q4uhgA57XR
 8RbGKlN/ixfxiEJZs4WewnLWZ/DSyvnmtvKDeZPQo7fGrwVprZtvHVzjUHkMLNFW+z3wvHIjde/
 3PMgY7YYSNlEL8X/v6mTRNlFP53TjttK28Z4jAUme3N5JXoFHPvrDdl+tqiHwTY9smPF51HXGcB
 xWC5RwvNreYjvrC9EaUHgzL1+e6Gx8rOFkpX4DlZBsQ8HSiPugdwwDwYfB7QxPgoBWhkuBijcy/
 gFr+Gweiqt1Gmsa/0Uw==
X-Proofpoint-ORIG-GUID: MSKbqICeJ3K3_gB7pE2Hgj018iTKkIiV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-25_06,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604250227
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_144505_827180_E40AC013 
X-CRM114-Status: GOOD (  38.91  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBBcHIgMjUsIDIwMjYgYXQgMDE6MTA6MDJQTSAtMDUwMCwgRGVubmlzIEdpbG1vcmUg
d3JvdGU6Cj4gT24gU2F0LCBBcHIgMjUsIDIwMjYgYXQgOToyNOKAr0FNIERtaXRyeSBCYXJ5c2hr
b3YKPiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPiA+Cj4gPiBP
biBTYXQsIEFwciAyNSwgMjAyNiBhdCAwMjoyODo0NFBNICswMzAwLCBMYXVyZW50IFBpbmNoYXJ0
IHdyb3RlOgo+ID4gPiBIaSBEZW5uaXMsCj4gPiA+Cj4gPiA+IFRoYW5rIHlvdSBmb3IgdGhlIHBh
dGNoLgo+ID4gPgo+ID4gPiBPbiBGcmksIEFwciAyNCwgMjAyNiBhdCAxMDoxMDowOFBNIC0wNTAw
LCBEZW5uaXMgR2lsbW9yZSB3cm90ZToKPiA+ID4gPiBUaGUgTG9udGl1bSBMVDg3MTFVWEQgaXMg
YSBoaWdoIHBlcmZvcm1hbmNlIHR3byBsYW5lIFR5cGUtQy9EUDEuNAo+ID4gPiA+IHRvIEhETUky
LjAgY29udmVydGVyLCBkZXNpZ25lZCB0byBjb25uZWN0IGEgVVNCIFR5cGUtQyBzb3VyY2Ugb3IK
PiA+ID4gPiBhIERQMS40IHNvdXJjZSB0byBhbiBIRE1JMi4wIHNpbmsuCj4gPiA+Cj4gPiA+IEFz
IGZhciBhcyBJIGNhbiB0ZWxsLCB0aGUgTFQ4NzExVVhEIGhhcyBhbiBJMkMgY29udHJvbCBpbnRl
cmZhY2UuCj4gPiA+IFNob3VsZG4ndCBpdCBiZSBhbiBJMkMgZGV2aWNlID8KPiA+Cj4gPiBGcm9t
IHRoZSBkYXRhc2hlZXQ6Cj4gPgo+ID4gVGhlIGRldmljZSBpcyBjYXBhYmxlIG9mIGF1dG9tYXRp
YyBvcGVyYXRpb24gd2hpY2ggaXMKPiA+IGVuYWJsZWQgYnkgYW4gaW50ZWdyYXRlZCBtaWNyb3By
b2Nlc3NvciB0aGF0IHVzZXMgYW4KPiA+IGVtYmVkZGVkIFNQSSBmbGFzaCBmb3IgZmlybXdhcmUg
c3RvcmFnZS4gU3lzdGVtIGNvbnRyb2wKPiA+IGlzIGFsc28gYXZhaWxhYmxlIHRocm91Z2ggdGhl
IHVzZSBvZiBhIGRlZGljYXRlZAo+ID4gY29uZmlndXJhdGlvbiBJMkMgc2xhdmUgaW50ZXJmYWNl
Lgo+ID4KPiA+IE15IGd1ZXNzIHdhcyB0aGF0IGl0IGNhbiBlaXRoZXIgYmUgYW4gSTJDIGRldmlj
ZSBvciBpdCBjYW4gZnVuY3Rpb24gYXMgYQo+ID4gc2ltcGxlIHBsYXRkZXYgd2l0aCBubyBJMkMg
Y29udHJvbHMuIFBsZWFzZSBjb3JyZWN0IG1lIGlmIG15Cj4gPiB1bmRlcnN0YW5kaW5nIHdhcyB3
cm9uZy4KPiA+Cj4gPiBCdXQgbm93IGxvb2tpbmcgYXQgdGhlIHNjaGVtYXRpY3MsIGl0IHNlZW1z
IHRvIGJlIGNvbm5lY3RlZCB0byBJMkM2Lgo+ID4gV2hpY2ggbWVhbnMgdGhhdCBpdCBzaG91bGQg
YmUgZGVzcmliZWQgKGFuZCBib3VuZCkgYXMgc3VjaC4KPiAKPiBIaSBEbWl0cnkgYW5kIExhdXJl
bnQsCj4gCj4gV2hpbGUgdGhlIHNjaGVtYXRpYyBzaG93cyB0aGF0IGl0IGNhbiB1c2UgSTJDIGFu
ZCBoYXMgYmVlbiB3aXJlZCB1cCwKPiBpdCBhbHNvIHNob3dzIHRoYXQgYm90aCBNT0RFX1NFTCBh
bmQgSTJDX0FERFIgaGF2ZSB1bnBvcHVsYXRlZCAxMGsKPiByZXNpc3RvcnM7IGFzIGEgcmVzdWx0
LCBNT0RFX1NFTCBpcyBjb25uZWN0ZWQgZGlyZWN0bHkgdG8gR05ELCBwdXR0aW5nCj4gdGhlIGJy
aWRnZSBpbiBhdXRvbm9tb3VzIG1vZGUuIEkgY29uZmlybWVkIHRoaXMgYnkgcnVubmluZyBgaTJj
ZGV0ZWN0Cj4gLXIgLXkgNmAsIHdpdGggdGhlIG9ubHkgZGV2aWNlIG9uIHRoZSBidXMgYmVpbmcg
dGhlIEhZTTg1NjMgUlRDIGF0Cj4gMHg1MS4gV2l0aG91dCByZXdvcmtpbmcgdGhlIGJvYXJkLCB0
aGUgZGV2aWNlIGlzIG5vdCBkaXJlY3RseQo+IGNvbnRyb2xsYWJsZSBhbmQganVzdCBydW5zIGF1
dG9ub21vdXNseS4KCkkgdGhpbmsgaXQgd291bGQgYmUgbmljZSB0byBtZW50aW9uOgotIEluIHRo
ZSBjb21taXQgZm9yIHRoZSBiaW5kaW5ncywgdGhhdCB0aGUgZGV2aWNlIGNhbiBiZSBydW5uaW5n
CiAgdW5jb250cm9sbGVkIG9yIGl0IGNhbiBiZSBhdHRhY2hlZCBvdmVyIEkyQywgYmluZGluZ3Mg
ZGVzY3JpYmUgdGhlCiAgdW5jb250cm9sbGVkIG1vZGUuCi0gSW4gdGhpcyBjb21taXQgbWVzc2Fn
ZSwgdGhlIHNhbWUuCi0gSW4gdGhlIGNvbW1pdCBtZXNzYWdlIGZvciB0aGUgYm9hcmQgRFQgbWVu
dGlvbiB5b3VyIGZpbmRpbmdzIGFib3V0IHRoZQogIGJvYXJkLCBtZW50aW9uIHNvbGRlcmluZyBS
OSBvciBSMTcgKHdoaWNoIG9uZT8pIGFuZCBSMjcuCj4gCj4gRGVubmlzCj4gCj4gPiA+Cj4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogRGVubmlzIEdpbG1vcmUgPGRlbm5pc0BhdXNpbC51cz4KPiA+ID4g
PiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVh
bGNvbW0uY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3Np
bXBsZS1icmlkZ2UuYyB8IDUgKysrKysKPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKQo+ID4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2Uvc2ltcGxlLWJyaWRnZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zaW1wbGUtYnJpZGdl
LmMKPiA+ID4gPiBpbmRleCA4YWEzMWNhM2M3MmQuLjQyYzFmM2Q1YmEwYyAxMDA2NDQKPiA+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3NpbXBsZS1icmlkZ2UuYwo+ID4gPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc2ltcGxlLWJyaWRnZS5jCj4gPiA+ID4gQEAgLTI3
MCw2ICsyNzAsMTEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc2ltcGxlX2Jy
aWRnZV9tYXRjaFtdID0gewo+ID4gPiA+ICAgICAgICAgICAgIC5kYXRhID0gJihjb25zdCBzdHJ1
Y3Qgc2ltcGxlX2JyaWRnZV9pbmZvKSB7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAuY29u
bmVjdG9yX3R5cGUgPSBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUEsCj4gPiA+ID4gICAgICAgICAg
ICAgfSwKPiA+ID4gPiArICAgfSwgewo+ID4gPiA+ICsgICAgICAgICAgIC5jb21wYXRpYmxlID0g
ImxvbnRpdW0sbHQ4NzExdXhkIiwKPiA+ID4gPiArICAgICAgICAgICAuZGF0YSA9ICYoY29uc3Qg
c3RydWN0IHNpbXBsZV9icmlkZ2VfaW5mbykgewo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
LmNvbm5lY3Rvcl90eXBlID0gRFJNX01PREVfQ09OTkVDVE9SX0hETUlBLAo+ID4gPiA+ICsgICAg
ICAgICAgIH0sCj4gPiA+ID4gICAgIH0sIHsKPiA+ID4gPiAgICAgICAgICAgICAuY29tcGF0aWJs
ZSA9ICJwYXJhZGUscHMxODVoZG0iLAo+ID4gPiA+ICAgICAgICAgICAgIC5kYXRhID0gJihjb25z
dCBzdHJ1Y3Qgc2ltcGxlX2JyaWRnZV9pbmZvKSB7Cj4gPiA+Cj4gPiA+IC0tCj4gPiA+IFJlZ2Fy
ZHMsCj4gPiA+Cj4gPiA+IExhdXJlbnQgUGluY2hhcnQKPiA+Cj4gPiAtLQo+ID4gV2l0aCBiZXN0
IHdpc2hlcwo+ID4gRG1pdHJ5CgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
