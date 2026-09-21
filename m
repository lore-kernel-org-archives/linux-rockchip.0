Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E372C982ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 12:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtfYiS9WkjvTrh3eqk1RO2OFnr6PU0DSKrGUPfOWgJU=; b=MAHcwfXVR4oWB7
	Dg0eNcykvJO27Om2PzgCYU9+gW82L52SLDPpqUNajrzwILs96dsqvNlmf6idGhj+lsbpzOu2Yg8iR
	06LRiy893HtS3ML6n+K+yI/K8u/QzqNxxyrG4pa645BTZe3LFCJTVFHYGjhm0bLq8J702J5sp8apD
	vRrUnY/4ka4jwB3KIHj2UOOtuK4Z5ie/ITq5J7YJX5owELVNgWTGK4Ot59ZQHDNKWNS65X1j7nXfP
	9WKd1m6x6UeEP3LHml9TyerX8EUzOn4mR+iatZWf0UqJVAoCKzLGfalyNli1r1d2ja6z2CLt/g/bH
	zHWzkyVWu6AEUcIx+1zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8dMv-000000027QH-0ttP;
	Mon, 21 Sep 2026 12:43:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8dMt-000000027PF-1AHO
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 12:43:36 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAeBv6837829
	for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 12:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YTc4eaTqTCWWXmcCsM9hd8rF0EjF2lDAr6pE9wv6n6k=; b=RjNhQMW0qXvCl9e7
	TSqSjkDCMfDvn3tLw3Cir5ZYA42nfF6E17HauGaX61Fj0ylBQweO2l6cu7Ja1ckf
	bTkYPxta1GMCaU3pKkI2VxKH3oak+zv+0Td9/U1IMNUWo9PGFgsaXdK0JbDAjy8E
	9WUe4FSN44FrQeReNOrusu4zefIi2DGS7SlM93UNUJZ92ubgeva2ZyevUEOjxHgm
	1KotCQAkWGKs8y5QQHk3iqcJBOR/BwzySMjwYrff7wXQWAIWtINpjTKMkhDJSjpT
	vrUr230c/RwSaC9P6ePBdhDIZFQVeApKVBjMFEfHcYYTAeFF6AZOdcpBgQs4XRUb
	HmK6/g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtwf5hug1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 12:43:32 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-39d865b11b4so4134085a91.3
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 05:43:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789994611; cv=none;
        d=google.com; s=arc-20260327;
        b=RcLDeEjQ7A5I/TOQ8md8kF6K6IewQdsIICtRR3yW83bRCsWKkvMMKRJedsiPDDgLB3
         c3uLdiEEU4/zN/qix2hczGajKPdDpsO0XOm9UISK6cagEimCw4rPXCzHDZANOCtAzZM6
         dzNNB6LciNStFcXdtr6ovhwoemwwPdsugFHVwstthkeIcZ69rk5B26uu9TkxJf8lfb7h
         plxMe4GUibWG+HQ13jYVqXyIU5KDCwUXzwDRECQxUgsA1oXGVwemxCuqrL8Hbu5HKeHM
         cl72bOfj9vZM/5YyWHxWaQCyo+AZzcs2zumGaWwTttRINp8RqQ4lxKdsQoov7X4WR8uG
         RV6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YTc4eaTqTCWWXmcCsM9hd8rF0EjF2lDAr6pE9wv6n6k=;
        fh=4KhtAEzLK0ZwTLXH93pW3FHSjYMpC0luX/clCU5zCjM=;
        b=TYW+H2f6mHm4BVT07AIWieqnARuDOSWKCYAqOsdMTAvB0mz8ID+k9yGd30bj7qTl3h
         D/+Enli+J+F9xQvl45WYiRuFZv3iAXfr+jBWpn0Z4PnySf1eb0e3R//lprC9dtCkFXqD
         6dXIlOM9wEyOs2m3SNy0gN7lk3UEjcMAFHNvivsd6OvKFr9h1CQUmTl3dziHEhFRJvwv
         g3rqt8b+Dp6zNtP87nGy2yw/cDdLtQ16d4wpeGYqBcp2piX7z/Anba2E/54M2i+EVLR6
         inYphSBMGaTM9WD/20XW6NPpa5iybrtoNqHTY3ENJcT/TDQUeSl1P+D+RIgfhIrk2hxR
         TB/A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789994611; x=1790599411; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=YTc4eaTqTCWWXmcCsM9hd8rF0EjF2lDAr6pE9wv6n6k=;
        b=SR0NhsWWEk7jLuNuX/VRsGy8ZpxmpnHnAjJYCSRr9AY/n6rql84LwgfbqC3iIo4+2o
         84TPU4Dj+22HaTotMMIlX2arkv6VR394ghE4WxAsNdyJubuO4vFogofFRHtOw+G+YfkC
         pNThYNNWAF4unuX7Sx4YuRWGBjUmHaP6877Zu8n65xQU7FkncrhoAm0r4xBwnRSOiVx4
         /4ppnfYcX0YoI77P2yZojCM/lmuhEI/kOmnbcZqDWoA5M+9FlPKcj2T3SvzXXMiAJMOU
         oWN2BxmWGnaQn9Y4MgvuOvUaEyNftBPz/kgggTijZSa6KBGIQo9QKzY91HywzHqLNy21
         HOzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789994611; x=1790599411;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YTc4eaTqTCWWXmcCsM9hd8rF0EjF2lDAr6pE9wv6n6k=;
        b=0Vex9No8hSmX85I3l0dGwbxAaKBrcHHT3Pmii0mv10cm8gR1PwnXC6plndujswJwCS
         0XXWArSRNdpENM9s0mDHWaTm8/WWzzlANRfuZ4VbwTnjYRONJBJkpOsTo2C2lOGw03Jj
         DVkn0IZ6pyJjqU1et7E5i2JEaVFs8QrLJp83kfTQJxp0lTk//uFDiBOpz0B8ooAE4in1
         AJBaGEuoCaN6Ze30gVllYxPMOs5WXibuRyVlzYXZpJHRivykdKFpfnYLA7ChUzwAEl6j
         arrehL5QOimgRyfKINw45J7LkhPLbs46yKUsBF85DFya5e8uvMv++ZX1NaH4Jm3jjAqH
         GW6A==
X-Forwarded-Encrypted: i=1; AKwUvBy6z6op9yfc1D3WiV9r+PYK3zZHqP0z7B2ClyS2sbgKvFeBbBxDwLKmHAjVyle0Fwfz4pkAFPnjazsAnCnCwQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nloxmtS8BQ8dmFE0WU0XZ1bqJiSv78lP3l/l98hLOZoMnLgYkk
	CmGlQAtZkrFxikBmPNji/wSPZvCwKHtQ5hQ+RFIpAqM5uryGxAZiiT8KTIEnCtN+d90qsxBnoq9
	he43Fk0YNPUPaOpJIGSosZP3rH7dPARN7nIrLti0XpujrgrpcEiubA8h5O3LGmatsScvfBr5E78
	d5Sn9sFJxZS340J7DOZF/AxFIVc1S9HZeXG579RtbwL00T83/3yQ==
X-Gm-Gg: AYBFou08+sifmOW9hoAk7Ty6jtuexXuqHiiMYmLm6yw3aGnUHLRjxbyOkBJmRz4YC30
	J1fEsPzsTFGDD3Wub7RAa0otrwTErmuJXZ68odC1HP9IoGteCHQpIPh3rGjAwl7ylrJRsJf+KJQ
	oVvhUvNozgsGNrU7GiTI5kSrx8+NPyp/gP2N7me+jEpjROWCq7KHY6qRP+PA==
X-Received: by 2002:a17:903:2349:b0:2dd:c100:424e with SMTP id d9443c01a7336-2ddc10044e2mr89288625ad.50.1789994611224;
        Mon, 21 Sep 2026 05:43:31 -0700 (PDT)
X-Received: by 2002:a17:903:2349:b0:2dd:c100:424e with SMTP id
 d9443c01a7336-2ddc10044e2mr89288245ad.50.1789994610661; Mon, 21 Sep 2026
 05:43:30 -0700 (PDT)
MIME-Version: 1.0
References: <20260915104328.45901-1-gahing@gahingwoo.com> <20260915104328.45901-11-gahing@gahingwoo.com>
In-Reply-To: <20260915104328.45901-11-gahing@gahingwoo.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 14:43:19 +0200
X-Gm-Features: AcwNN1XRM4Zpoe9SV6Ox1cb4qr0Qhj7z7Tg6kKrM_v7MoPDIacNjWOamn5qOldA
Message-ID: <CAPx+jO_MFkUrzRDnuoqn_yKntRc_NqPs=0nda6wC_xgb+Fy7bw@mail.gmail.com>
Subject: Re: [PATCH v13 10/14] pmdomain: rockchip: cycle optional power-domain
 resets on power-on
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org,
        will@kernel.org, robin.murphy@arm.com, ulfh@kernel.org,
        p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com,
        royalnet026@gmail.com, abel.vesa@oss.qualcomm.com,
        sebastian.reichel@collabora.com, sidong.yang@furiosa.ai,
        u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com,
        diederik@cknow-tech.com, alchark@flipper.net,
        dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
        iommu@lists.linux.dev, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Authority-Analysis: v=2.4 cv=SJLXx+vH c=1 sm=1 tr=0 ts=6ab12674 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=ZpdpYltYx_vBUK5n70dp:22 a=9GNsruGHAAAA:8 a=EUspDBNiAAAA:8
 a=xnVI1lRHtBAIIYlgu6QA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=gf-oSkQAjqHFJRp-GQfY:22
X-Proofpoint-GUID: NWLSo54pl0p2vuL9pWcZBR1sv9RW8L6v
X-Proofpoint-ORIG-GUID: NWLSo54pl0p2vuL9pWcZBR1sv9RW8L6v
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE4MiBTYWx0ZWRfXzQ0lUjeAHagY
 tt+SYziex8sscTP1eq+uHBlGjjtSnmCEfNwDCnmCqePxvYAdyEFRLOB9DzemslT0rYbJjGcDvEO
 CeIy+8ry2Se+LF2dZrHozK859F6CiBY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE4MiBTYWx0ZWRfXx2hiDk99lNnt
 aUDexfTLwkGnD+gUHCDk19iIGSuy5p2teUd5Qhg4bre7RikXOJcsdqTww9+KwN/U1XrugyuxsWj
 i04FvBTAuxRvO7Oidz+Y9sCUPafTXX4lc+XOwcTeoKkpKGjYPhCOliO5idui7i5Oys7HeAgJiL1
 aWgP1+Jn2K3uoW7fKLyykBiQzbx/PybdYZSn74IfafTXN+H9Y9gKEiBaLskZ2FbM3kqj3BOZb/k
 3tgSM/Jbj1NwNI+L9vuA5SZxUmRXk90lahvrc9WUMqsCBympSoSjhcUXxOh91IwS8M60F69vuv3
 WsMCNZfwK4hy4MnuhcJR3FAIsSiYPHLVZtwy+jVV7wJMAcQ3SwY4O2Y+1yN7XZSHMS01s8DTRG2
 rIAqrH/vn5tyYhnsPBErkXV1MF7Oa1AP6cnmP2vo8nruSiCeq1+Xwy5a7c7n7ON+MTHCcOKGvHN
 cad063lkxkEIcwR8itQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609210182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_054335_425594_C4E3CD70 
X-CRM114-Status: GOOD (  32.47  )
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMTI6NDXigK9QTSBKaWF4aW5nIEh1IDxnYWhpbmdAZ2Fo
aW5nd29vLmNvbT4gd3JvdGU6Cj4KPiBTb21lIFJvY2tjaGlwIGRvbWFpbnMgY29tZSBvdXQgb2Yg
cG93ZXItb24gd2l0aCB0aGVpciBidXMgaW50ZXJmYWNlIGluIGFuCj4gdW5kZWZpbmVkIHN0YXRl
LiBPbiB0aGUgUkszNTc2IE5QVSB0aGlzIHNob3dzIHVwIGFzIGEgaGFuZyBvbiB0aGUgZmlyc3QK
PiByZWdpc3RlciBhY2Nlc3MgYWZ0ZXIgdGhlIGRvbWFpbiBpcyBzd2l0Y2hlZCBvbiwgYW5kIHB1
bHNpbmcgdGhlIGRvbWFpbidzCj4gcmVzZXRzIGF0IHRoaXMgcG9pbnQgY2xlYXJzIGl0Lgo+Cj4g
VGFrZSB0aGUgZG9tYWluIG5vZGUncyByZXNldHMgaWYgaXQgaGFzIGFueSwgYW5kIHB1bHNlIHRo
ZW0gYmV0d2Vlbgo+IHJlbGVhc2luZyBpZGxlIGFuZCByZXN0b3JpbmcgUW9TLiBUaGUgcmVzZXRz
IGFyZSBvcHRpb25hbCwgc28gZG9tYWlucyB0aGF0Cj4gZG8gbm90IGxpc3QgYW55IGFyZSB1bmFm
ZmVjdGVkLgoKUGxlYXNlIGRyb3AgdGhlIGJlbG93IGZyb20gdGhlIGNvbW1pdCBtZXNzYWdlLCB0
aGUgYWJvdmUgaXMgY2xlYXIKZW5vdWdoIEkgdGhpbmshCgo+Cj4gVGhlIGN5Y2xlIGdvZXMgYmVm
b3JlIHRoZSBzZXR0bGUgZGVsYXkgOS8xNCBhZGRzLCBub3QgYWZ0ZXIgaXQuIEEgZG9tYWluCj4g
dGhhdCBhc2tzIGZvciBib3RoIGlzIGFza2luZyB0byBzZXR0bGUgYmVmb3JlIHRoZSBRb1MgcmVn
aXN0ZXJzIGFuc3dlciwgYW5kCj4gYSByZXNldCBkZWFzc2VydGVkIGFmdGVyIHRoZSBkZWxheSB3
b3VsZCBsZWF2ZSBub3RoaW5nIGJldHdlZW4gdGhlIGRlYXNzZXJ0Cj4gYW5kIHJvY2tjaGlwX3Bt
dV9yZXN0b3JlX3FvcygpLiBPbiBSSzM1NzYgUERfTlBVMCBhbmQgUERfTlBVMSBhc2sgZm9yIGJv
dGgsCj4gYW5kIHRoZSByZXNldCB0aGV5IGN5Y2xlIGlzIFNSU1RfQV9SS05OMC8xX0JJVSwgdGhl
IGJ1cyBpbnRlcmZhY2UgdGhvc2UgUW9TCj4gd3JpdGVzIGdvIHRocm91Z2guCj4KPiBJdCBvbmx5
IHJ1bnMgd2hlbiB0aGUgZG9tYWluIGFjdHVhbGx5IGNoYW5nZXMgc3RhdGU6IHJvY2tjaGlwX3Bk
X3Bvd2VyKCkKPiByZXR1cm5zIGVhcmx5IHdoZW4gdGhlIGhhcmR3YXJlIGFscmVhZHkgcmVhZHMg
dGhlIHN0YXRlIGJlaW5nIGFza2VkIGZvci4gQQo+IGJvb3Rsb2FkZXIgdGhhdCBsZWF2ZXMgdGhl
IE5QVSBwb3dlcmVkIHdvdWxkIHRoZXJlZm9yZSBza2lwIGJvdGggdGhpcyBhbmQKPiB0aGUgZGVs
YXksIHdoaWNoIGlzIHdoeSA5LzE0IGdpdmVzIFJLMzU3Nl9QRF9OUFUgbmVlZF9yZWd1bGF0b3Ig
YW5kIGZvcmNlcwo+IHRoZSBkb21haW4gb2ZmIGF0IHByb2JlLgo+Cj4gTm8gaW4tdHJlZSBEVFMg
cHV0cyByZXNldHMgaW4gYSBwb3dlci1kb21haW4gbm9kZSB0b2RheSwgc28gZXZlcnkgb3RoZXIK
PiBSb2NrY2hpcCBTb0MgdGFrZXMgdGhlIG9wdGlvbmFsIGdldCdzIE5VTEwgYW5kIGlzIHVuY2hh
bmdlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IEppYXhpbmcgSHUgPGdhaGluZ0BnYWhpbmd3b28uY29t
Pgo+IFJldmlld2VkLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBvc3MucXVhbGNvbW0uY29tPgoK
S2luZCByZWdhcmRzClVmZmUKCj4gLS0tCj4gIGRyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0t
ZG9tYWlucy5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5n
ZWQsIDI3IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BtZG9tYWluL3Jv
Y2tjaGlwL3BtLWRvbWFpbnMuYyBiL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlu
cy5jCj4gaW5kZXggMzk5ODhlZmQ4Li42Y2M4ZDZlZmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
bWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiArKysgYi9kcml2ZXJzL3BtZG9tYWluL3Jv
Y2tjaGlwL3BtLWRvbWFpbnMuYwo+IEBAIC0xOSw2ICsxOSw3IEBACj4gICNpbmNsdWRlIDxsaW51
eC9vZl9jbGsuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ICAjaW5jbHVkZSA8bGludXgv
ZGVsYXkuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9y
ZWdtYXAuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgo+ICAjaW5j
bHVkZSA8bGludXgvbWZkL3N5c2Nvbi5oPgo+IEBAIC0xMDMsNiArMTA0LDcgQEAgc3RydWN0IHJv
Y2tjaGlwX3BtX2RvbWFpbiB7Cj4gICAgICAgICBzdHJ1Y3QgY2xrX2J1bGtfZGF0YSAqY2xrczsK
PiAgICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZTsKPiAgICAgICAgIHN0cnVjdCByZWd1
bGF0b3IgKnN1cHBseTsKPiArICAgICAgIHN0cnVjdCByZXNldF9jb250cm9sICpyZXNldHM7Cj4g
IH07Cj4KPiAgc3RydWN0IHJvY2tjaGlwX3BtdSB7Cj4gQEAgLTY4OCw2ICs2OTAsMjEgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9wZF9wb3dlcihzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWluICpwZCwg
Ym9vbCBwb3dlcl9vbikKPiAgICAgICAgICAgICAgICAgaWYgKHJldCA8IDApCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4KPiArICAgICAgICAgICAgICAgLyoKPiArICAgICAg
ICAgICAgICAgICogT3B0aW9uYWw6IHNvbWUgZG9tYWlucyBuZWVkIHRoZWlyIHJlc2V0cyBjeWNs
ZWQgb25jZSBwb3dlcgo+ICsgICAgICAgICAgICAgICAgKiBpcyBvbi4gVGhpcyBnb2VzIEJFRk9S
RSB0aGUgc2V0dGxlIGRlbGF5LCBub3QgYWZ0ZXI6IGEKPiArICAgICAgICAgICAgICAgICogZG9t
YWluIHRoYXQgYXNrcyBmb3IgYm90aCBpcyBhc2tpbmcgdG8gc2V0dGxlIGJlZm9yZSB0aGUKPiAr
ICAgICAgICAgICAgICAgICogUW9TIHJlZ2lzdGVycyBhbnN3ZXIsIGFuZCBhIHJlc2V0IGRlYXNz
ZXJ0ZWQgYWZ0ZXIgdGhlCj4gKyAgICAgICAgICAgICAgICAqIGRlbGF5IHdvdWxkIGxlYXZlIG5v
dGhpbmcgYmV0d2VlbiBpdCBhbmQgdGhlIFFvUyB3cml0ZXMuCj4gKyAgICAgICAgICAgICAgICAq
IE9uIFJLMzU3NiB0aGUgcmVzZXQgYmVpbmcgY3ljbGVkIGlzIHRoZSBOUFUgY29yZSdzIGJ1cwo+
ICsgICAgICAgICAgICAgICAgKiBpbnRlcmZhY2UsIHdoaWNoIGlzIHdoYXQgdGhvc2Ugd3JpdGVz
IGdvIHRocm91Z2guCj4gKyAgICAgICAgICAgICAgICAqLwo+ICsgICAgICAgICAgICAgICBpZiAo
cGQtPnJlc2V0cykgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlc2V0X2NvbnRyb2xfYXNz
ZXJ0KHBkLT5yZXNldHMpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHVzbGVlcF9yYW5nZSgx
MCwgMjApOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQo
cGQtPnJlc2V0cyk7Cj4gKyAgICAgICAgICAgICAgIH0KPiArCj4gICAgICAgICAgICAgICAgIC8q
IFNvbWUgZG9tYWlucyBuZWVkIHRvIHNldHRsZSBiZWZvcmUgdGhlIFFvUyByZWdpc3RlcnMgYW5z
d2VyLiAqLwo+ICAgICAgICAgICAgICAgICBpZiAocGQtPmluZm8tPmRlbGF5X3VzKQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgIHVkZWxheShwZC0+aW5mby0+ZGVsYXlfdXMpOwo+IEBAIC04NjEs
NiArODc4LDE0IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcG1fYWRkX29uZV9kb21haW4oc3RydWN0
IHJvY2tjaGlwX3BtdSAqcG11LAo+ICAgICAgICAgaWYgKGVycm9yKQo+ICAgICAgICAgICAgICAg
ICBnb3RvIGVycl9wdXRfY2xvY2tzOwo+Cj4gKyAgICAgICBwZC0+cmVzZXRzID0gb2ZfcmVzZXRf
Y29udHJvbF9hcnJheV9nZXRfb3B0aW9uYWxfZXhjbHVzaXZlKG5vZGUpOwo+ICsgICAgICAgaWYg
KElTX0VSUihwZC0+cmVzZXRzKSkgewo+ICsgICAgICAgICAgICAgICBlcnJvciA9IGRldl9lcnJf
cHJvYmUocG11LT5kZXYsIFBUUl9FUlIocGQtPnJlc2V0cyksCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAiJXBPRm46IGZhaWxlZCB0byBnZXQgcmVzZXRzXG4iLCBub2Rl
KTsKPiArICAgICAgICAgICAgICAgcGQtPnJlc2V0cyA9IE5VTEw7Cj4gKyAgICAgICAgICAgICAg
IGdvdG8gZXJyX3VucHJlcGFyZV9jbG9ja3M7Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgcGQt
Pm51bV9xb3MgPSBvZl9jb3VudF9waGFuZGxlX3dpdGhfYXJncyhub2RlLCAicG1fcW9zIiwKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTlVMTCk7Cj4K
PiBAQCAtOTMxLDYgKzk1Niw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcG1fYWRkX29uZV9kb21h
aW4oc3RydWN0IHJvY2tjaGlwX3BtdSAqcG11LAo+ICAgICAgICAgY2xrX2J1bGtfdW5wcmVwYXJl
KHBkLT5udW1fY2xrcywgcGQtPmNsa3MpOwo+ICBlcnJfcHV0X2Nsb2NrczoKPiAgICAgICAgIGNs
a19idWxrX3B1dChwZC0+bnVtX2Nsa3MsIHBkLT5jbGtzKTsKPiArICAgICAgIHJlc2V0X2NvbnRy
b2xfcHV0KHBkLT5yZXNldHMpOwo+ICAgICAgICAgcmV0dXJuIGVycm9yOwo+ICB9Cj4KPiBAQCAt
OTQ5LDYgKzk3NSw3IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BtX3JlbW92ZV9vbmVfZG9tYWlu
KHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkKQo+Cj4gICAgICAgICBjbGtfYnVsa191bnBy
ZXBhcmUocGQtPm51bV9jbGtzLCBwZC0+Y2xrcyk7Cj4gICAgICAgICBjbGtfYnVsa19wdXQocGQt
Pm51bV9jbGtzLCBwZC0+Y2xrcyk7Cj4gKyAgICAgICByZXNldF9jb250cm9sX3B1dChwZC0+cmVz
ZXRzKTsKPgo+ICAgICAgICAgLyogcHJvdGVjdCB0aGUgemVyb2luZyBvZiBwbS0+bnVtX2Nsa3Mg
Ki8KPiAgICAgICAgIG11dGV4X2xvY2soJnBkLT5wbXUtPm11dGV4KTsKPiAtLQo+IDIuNDMuMAo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
