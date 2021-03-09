Return-Path: <SRS0=gCTq=IH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBB7AC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Mar 2021 09:59:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4915A6518F
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Mar 2021 09:59:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4915A6518F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:Date:Message-ID:
	From:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lVVikhgspdleIpWvn98deS7ComMk9Tarwai5oVSY8d0=; b=hgIDtC6CIZiAl+XNyIWPREmZW
	KwdNYiA0ki6HDi4WOLZkr3zsIDKOgBhzCz0ie3cd+4rcPzcIrhQ6lsD7QdYngCRevkU125geR+Y7h
	g0c8caOnQqabQT7//u6za21A/J+4QpGBHZeXutXfZWP8A+zBQlal62SlsyN5zcPLiLZ1fOuftsuj6
	/C3AX11tRp7dprfOlpnzo8AlGHwD71Joj9LYBirH5tSfbC3yUh6O3sPRR/om2DfvNAvNKbrThT97V
	fxDR0BRzGhHyefFtW9HKdhth2Ljf4XW1RnkiNZy0nx/o+pihpkg23UBCV1PbdodwULJyyUeMsVkjE
	ssqyor2iA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJZ9N-0049mh-Lg; Tue, 09 Mar 2021 09:59:37 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJZ97-0049j7-GG
 for linux-rockchip@lists.infradead.org; Tue, 09 Mar 2021 09:59:24 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20210309095917epoutp04f0074d7e2dec67e745e3e1f24d3e720c~qpDOBX2352853728537epoutp04B
 for <linux-rockchip@lists.infradead.org>; Tue,  9 Mar 2021 09:59:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20210309095917epoutp04f0074d7e2dec67e745e3e1f24d3e720c~qpDOBX2352853728537epoutp04B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1615283957;
 bh=H7GXZNe8mDiZk+7xJer+ZHMXA8WilmQDrfBYS4hqAJA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=VRnAV0h44JLfiZVHFmdL/87NLzIWxO0GvUFHHkp5TCo8whzC/ylJ7QPacMXvOqaNx
 eYYkYHFH+mDYGEkL64o74VRCkWhQewDsZM2/HpveWWNv0iuex5XwOspIfnXQk3yQTD
 Ar9p/7AvpmexLZLF+R1b064O6GOsv+oO15bijCEU=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20210309095916epcas1p1f79304e646b2d8fab370aaaa035a9e47~qpDNKMLys0671406714epcas1p1y;
 Tue,  9 Mar 2021 09:59:16 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.153]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 4DvrJw6YpWz4x9Pt; Tue,  9 Mar
 2021 09:59:12 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 98.8A.09582.0F647406; Tue,  9 Mar 2021 18:59:12 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20210309095912epcas1p363f088c2e3d0a3b1a1702607265f0d11~qpDJHgqeU3025930259epcas1p3g;
 Tue,  9 Mar 2021 09:59:12 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20210309095912epsmtrp1ec456487c50bfa33282d005b4101f136~qpDJGesGG2524525245epsmtrp1B;
 Tue,  9 Mar 2021 09:59:12 +0000 (GMT)
X-AuditID: b6c32a37-899ff7000000256e-ee-604746f05728
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 8E.DA.13470.FE647406; Tue,  9 Mar 2021 18:59:11 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20210309095911epsmtip2105fd04b6a2baec3cbed47338a852124~qpDIqkEIx2762327623epsmtip2J;
 Tue,  9 Mar 2021 09:59:11 +0000 (GMT)
Subject: Re: [RESEND PATCH v5 1/4] dt-bindings: devfreq: rk3399_dmc: Add
 rockchip,pmu phandle.
To: Daniel Lezcano <daniel.lezcano@linaro.org>, heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Enric Balletbo i Serra
 <enric.balletbo@collabora.com>, =?UTF-8?Q?Ga=c3=abl_PORTAY?=
 <gael.portay@collabora.com>, Rob Herring <robh@kernel.org>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Rob
 Herring <robh+dt@kernel.org>, "open list:DEVICE FREQUENCY (DEVFREQ)"
 <linux-pm@vger.kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>, open list
 <linux-kernel@vger.kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <04bed90e-c523-0638-65ab-e286fdc98a34@samsung.com>
Date: Tue, 9 Mar 2021 19:15:54 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20210308233858.24741-1-daniel.lezcano@linaro.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLJsWRmVeSWpSXmKPExsWy7bCmvu4HN/cEg5YmA4t5n2Ut5h85x2qx
 5vYhRoslu96wWfx/9JrV4mzTG3aLTY+vsVpc3jWHzeJz7xFGi08P/jNb3G5cwWbRuvcIu8X/
 PTvYHXg9dtxdwuixaVUnm8eda3vYPDYvqffo27KK0WP7tXnMHp83yQWwR2XbZKQmpqQWKaTm
 JeenZOal2yp5B8c7x5uaGRjqGlpamCsp5CXmptoqufgE6Lpl5gAdq6RQlphTChQKSCwuVtK3
 synKLy1JVcjILy6xVUotSMkpsCzQK07MLS7NS9dLzs+1MjQwMDIFKkzIzjg5R67gKnfF5amC
 DYyPObsYOTkkBEwkNs3cxdTFyMUhJLCDUWLBrjlQzidGiT9vtzBDON+AnOUn2WFaJvw9BlW1
 l1Hi874PUM57RonNC7exdDFycAgLJEi8bQ4GaRARsJc42ziRBaSGWWAVi8TD5lcsIAk2AS2J
 /S9usIHY/AKKEld/PGYEsXkF7CQuPP4JFmcRUJE4OGshWL2oQJjEyW0tUDWCEidnPgGLcwIt
 eDf/OVg9s4C4xK0n85kgbHmJ5q2zwV6QELjAIfF29g5miBdcJE7sf8EIYQtLvDq+Beo1KYmX
 /W1QdrXEypNH2CCaOxgltuy/wAqRMJbYv3QyE8iXzAKaEut36UOEFSV2/p7LCLGYT+Ld1x5W
 kBIJAV6JjjYhiBJlicsP7jJB2JISi9s72SYwKs1C8s4sJC/MQvLCLIRlCxhZVjGKpRYU56an
 FhsWGCNH9iZGcDrWMt/BOO3tB71DjEwcjIcYJTiYlUR4/Y67JQjxpiRWVqUW5ccXleakFh9i
 NAUG8ERmKdHkfGBGyCuJNzQ1MjY2tjAxNDM1NFQS500yeBAvJJCeWJKanZpakFoE08fEwSnV
 wFSc/1V+veP2o9Faxp7PJ2yd8WKnZqW+Y/Xq/CkRc9IsdnlumzNtiYGtwGOH9kt7T0YliH3+
 /rXje0IbZ1PULUX+h2l7/FPMtp8U7XSdfE+g/OH/M5tOdBWmxd/a4nAmz61s0l8FA7Wco+vE
 hBzPXl7Ps286v7xG6+ETOTnfTFfKFyZ9C5tr9bnp0Acdk9eCs8tibqldfVu8eJJHpbpe0K79
 TebtZU+3XPnU2hKuyccj67f//Y3zG259NFSUPt5od+pT2ZJgpZxz3x5smpV8eddiR/UMPVYe
 h02cYiz8/25tmda6ibE5oNMh78lyvZ5zF79H5IotXnPiCV97b83vrelrjm6ccCUvWOd82OL8
 i61KLMUZiYZazEXFiQAo4T0NUAQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsWy7bCSvO57N/cEg2uHrSzmfZa1mH/kHKvF
 mtuHGC2W7HrDZvH/0WtWi7NNb9gtNj2+xmpxedccNovPvUcYLT49+M9scbtxBZtF694j7Bb/
 9+xgd+D12HF3CaPHplWdbB53ru1h89i8pN6jb8sqRo/t1+Yxe3zeJBfAHsVlk5Kak1mWWqRv
 l8CVcXKOXMFV7orLUwUbGB9zdjFyckgImEhM+HuMqYuRi0NIYDejRO/fiywQCUmJaRePMncx
 cgDZwhKHDxdD1LxllDjU/4gRJC4skCDxtjkYpFxEwF7ibONEFpAaZoEVLBJ3Jh9gh2iYxCix
 tO092FA2AS2J/S9usIHY/AKKEld/PGYEsXkF7CQuPP4JFmcRUJE4OGshWL2oQJjEziWPmSBq
 BCVOznwCFucE2vZu/nOwemYBdYk/8y4xQ9jiEreezGeCsOUlmrfOZp7AKDwLSfssJC2zkLTM
 QtKygJFlFaNkakFxbnpusWGBYV5quV5xYm5xaV66XnJ+7iZGcFxqae5g3L7qg94hRiYOxkOM
 EhzMSiK8fsfdEoR4UxIrq1KL8uOLSnNSiw8xSnOwKInzXug6GS8kkJ5YkpqdmlqQWgSTZeLg
 lGpg8vzEuqe051LC9fi+t2JnLq6ffnReh0p18WZj82c6Do76ZxX1W98WvYq6222wcZad/usP
 Lyfc/lnQ+UL74P4fVrmv9rnc9BVVSK7bXhz36nngkZB1lcr7nysu9Wh+scUxJeG1nbdI0Y4v
 mg6Vvd0vNCUuzujs2+eem/CrauOafRHfZ+m0/94RG9TOfXv5nXjmU12b+iaJlh0qWugmc/BT
 jpNo9zxt1f95rEuSZT6u3CLIHLjW1Lr6Uw+T7JlXvp9sN1h7q2UZ7i+fvDwicrMlY+avthcX
 9N4f2XbkV3i0KOP5B00e0wSeJjvp3Evq9VTiqd0i+dKMZeHfu9cbtFcc9w9S/G2UsLz2ULns
 JrMVSizFGYmGWsxFxYkAopRhgDoDAAA=
X-CMS-MailID: 20210309095912epcas1p363f088c2e3d0a3b1a1702607265f0d11
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210308234058epcas1p43f00b9dcc3ea75e758ae2cf9a35d36ac
References: <CGME20210308234058epcas1p43f00b9dcc3ea75e758ae2cf9a35d36ac@epcas1p4.samsung.com>
 <20210308233858.24741-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_095922_339999_37CE14B5 
X-CRM114-Status: GOOD (  21.56  )
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

T24gMy85LzIxIDg6MzggQU0sIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+IEZyb206IEVucmljIEJh
bGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+Cj4gCj4gVGhlIFJv
Y2tjaGlwIERNQyAoRHluYW1pYyBNZW1vcnkgSW50ZXJmYWNlKSBuZWVkcyB0byBhY2Nlc3MgdG8g
dGhlIFBNVQo+IGdlbmVyYWwgcmVnaXN0ZXIgZmlsZXMgdG8ga25vdyB0aGUgRFJBTSB0eXBlLCBz
byBhZGQgYSBwaGFuZGxlIHRvIHRoZQo+IHN5c2NvbiB0aGF0IG1hbmFnZXMgdGhlc2UgcmVnaXN0
ZXJzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJh
bGxldGJvQGNvbGxhYm9yYS5jb20+Cj4gUmV2aWV3ZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5j
aG9pQHNhbXN1bmcuY29tPgo+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3Jn
Pgo+IFNpZ25lZC1vZmYtYnk6IEdhw6tsIFBPUlRBWSA8Z2FlbC5wb3J0YXlAY29sbGFib3JhLmNv
bT4KPiBBY2tlZC1ieTogTXl1bmdKb28gSGFtIDxteXVuZ2pvby5oYW1Ac2Ftc3VuZy5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+
Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL3JrMzM5
OV9kbWMudHh0IHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL3Jr
MzM5OV9kbWMudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEv
cmszMzk5X2RtYy50eHQKPiBpbmRleCBhMTBkMWY2ZDg1YzYuLmE0MWJjZmVmOTVjOCAxMDA2NDQK
PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9yazMzOTlf
ZG1jLnR4dAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVx
L3JrMzM5OV9kbWMudHh0Cj4gQEAgLTEyLDYgKzEyLDggQEAgUmVxdWlyZWQgcHJvcGVydGllczoK
PiAgCQkJIGZvciBkZXRhaWxzLgo+ICAtIGNlbnRlci1zdXBwbHk6CSBETUMgc3VwcGx5IG5vZGUu
Cj4gIC0gc3RhdHVzOgkJIE1hcmtzIHRoZSBub2RlIGVuYWJsZWQvZGlzYWJsZWQuCj4gKy0gcm9j
a2NoaXAscG11OgkJIFBoYW5kbGUgdG8gdGhlIHN5c2NvbiBtYW5hZ2luZyB0aGUgIlBNVSBnZW5l
cmFsIHJlZ2lzdGVyCj4gKwkJCSBmaWxlcyIuCj4gIAo+ICBPcHRpb25hbCBwcm9wZXJ0aWVzOgo+
ICAtIGludGVycnVwdHM6CQkgVGhlIENQVSBpbnRlcnJ1cHQgbnVtYmVyLiBUaGUgaW50ZXJydXB0
IHNwZWNpZmllcgo+IAoKQXBwbGllZCBpdC4gVGhhbmtzLgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hh
bndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
