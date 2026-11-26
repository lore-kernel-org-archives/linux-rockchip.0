Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5680C606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 12:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=imKafZ+1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=NcHOfw8r;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=kMcDwA1O
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hAugXN3i6lhQ8J2O4FViofJG29qpmTiSwiaSZADHMT8=; b=imKafZ+1Cck3zHiwtpTrmMDYcQ
	ZfymzpBdLGtlHSHQoLHoiRC8HYz8r1vnMEvWUZF2Xe4MkVnirE3sCnz5cgkxs7J15Za3ILYvIBciW
	jlr21bTEIXwcYYB5S7kFgp8WctHMOjMyPIzQzSNz+tC0F+LsfEDOkwE70enHyiBVjonlnrqKR3Kez
	AoOfxz1cp3/w2am4RLfV50e22+GQ8KFn50yePDqna+XCQuEDGn46FaAl1Hf7TaU2DLnxEeA9DsJIy
	4XFlUEOVjut3uRFNmcvVExdLYIxISN3y53UECFQIoKnbakxB/F8VHqw92qSWzhmoNfVai9p54GRWd
	8uR9leQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWYp8-0000000DCbn-020t;
	Thu, 26 Nov 2026 12:43:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWYp2-0000000DCaa-1L4H
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 12:43:33 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQBVYMr2758331
	for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 12:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GnmeKXoTKhOyCDZP+GpD1/6T8nYJ3ksjxHtTGDe1aX8=; b=NcHOfw8ru6Y4BXRC
	0ngT9SOy7f+e+5Ym7yuEXiV3KRGQrhm4JE82z9Iou0J0bbzl9X4lvf+zywRgQdpD
	TBfAJTRsYLTDjJnAgHciPvBW/7u+lHPgftMCwp0Pq6y85EelLE9spIXbYru4/l5+
	Ghjf0ZINuePAwwp4+85m0Gp9KW7jOtZY6MZXyRAOiiDeleDp9b6UxTFK/ELAT38n
	JcblSv4xOPp+vs2eAVRcQLspbT3NRwlSpcAIlvuVuHAc4yJfsG7OrX5BfXUsk5Cn
	7yLJf57Fv0/W8T5D2QvfmxOepgDEShR7miGXlIitqgrG0xP6mqn3VM4NRiCXpQR1
	G6YuMg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j61ahvep1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 12:43:31 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3b167bc8e16so5493884a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 04:43:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795697011; cv=none;
        d=google.com; s=arc-20260327;
        b=LyEqhju7rq6JztpG9X6G6rFoH8shs9DYNu+wkUFOCi+tz5X7FFO8v3lpohFptj5a3w
         /IpwZk4N8QMLFy6PYKIbr3BR1NK16dmH1GzN6xG3sZ6cdQOUwVqghwpygJnaZ5QjSCcs
         hTSAyr0DAGqGeWeGRXF1XaOE0Ks9LQzOu4BAa0YSKWcnZIcIw26qDxQgC496TP0sc6W6
         KdA5ee1TxUYt7QsI8BjDduKRJD7fePMzs/n0vjAl06IT5JgQKNnTuiYJzhTceqhHWMJx
         nc9I0cBrfkrAwBPd6A72CDvMpbjV3qJ/d6eDR+BjD0B0r3ws2qlBxMcxQMFuNw9zGYOo
         acxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GnmeKXoTKhOyCDZP+GpD1/6T8nYJ3ksjxHtTGDe1aX8=;
        fh=4ywnzyuOqIKVmKvpu+JP/RGe2AfmV/2G8lrAidJv3KA=;
        b=b+cUZRNDHP8nkAi2FUc5AMyEgFRh0Ssoh3teWKAq9xiZNPLY1Vs5DGqW09tsgn42ep
         Th3Pnljrdm+09h5MTZ36JDOGbKorRr/nHAXlbFpbJ3Du5Qyr4JSEQIAVgZIwLQhv/19L
         gpEgDo0GJeTHYP69BNzPV/Rsto38DUeSeJu9eIEdvND0BUOlPSO/4adTGcJZT3cccEA+
         vsZqcGV2qmoKbj3ezcrT5/XpJhjo1O3Lp6CdU/JFSvxOwU8KvMuqCJYpVViEk0gn/Xti
         jcUnFPlE9mYpCGuqpEg6kcBHwQOx9jFDxNtcJc+JOsbQf5HC8QN66mZl14YG3Pn++FN9
         MheQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795697011; x=1796301811; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=GnmeKXoTKhOyCDZP+GpD1/6T8nYJ3ksjxHtTGDe1aX8=;
        b=kMcDwA1OMNivQ00maQO1Ib2Bvctz7uFGZmClr/Qt6i5LG9mYKfkqmL1yr/f8BGL6E5
         ksXPiu7kmUiLRw/9TYsxDIHYk1bCaA9YFPniUJH3XEYZIasrTp3Bp3przbDfHdzQImH7
         E217n8wISClLIxKYk6bbyxctS9j3QCZ3WpddeejztcjZykIR+DBdwbHpJFU5jcQcsfx4
         pxgKlLQkCH+FBDiQtZaqfMfSF/0kwF3YrAfMHtDInD/TcMSull6Cs1h+frfJHVMTzT/e
         7q3BwVxJprtrRZwBty0rIm65f+sATPSCOKZZY8Sq/mYL3jR6bV3ebvQtNxVnFqiFYOml
         rgFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795697011; x=1796301811;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GnmeKXoTKhOyCDZP+GpD1/6T8nYJ3ksjxHtTGDe1aX8=;
        b=eWl4d9xwb0M3E2b33I5/119o+w1Zi6XKS+lFuRwYu8e/BS/p0ky1sMKKj041jE2xfL
         rpJDa2NFINg4i7md0LAaCS1wm5wlZMC1WBYyVDA+XU/fhVoX1tcnJDUsbJCSBSeBcb7r
         c3VUcdKvqH+LrpOXVswd3cM2GQp1MmYW5hXLoaqeE/CBYdx7lzuo5cJz/Hq6sVkEuYGk
         hYgmQd7OhmKZRf3f/CtQn7XMspZj5f+iDsjexudOYvBz2dvejcfxeQS5mN55NkWhnwiF
         9qjfShL6tA3Qn38MOlr9uUpN4uBcWcEvaKOzycDdptYar/1RrbYfCwYh8Af3jPq/Hy+Y
         8/Ew==
X-Forwarded-Encrypted: i=1; AL+hErFD3Sf8GNQ0JYBnmX0mbsP6gAEmQdcjQ4ZUIjHwoLvn79a7FTb5+QiaA8sbbRFKMzFvDAi/j3aE34XWMKhD1A==@lists.infradead.org
X-Gm-Message-State: APuU4Z8eQY8703/kAgb4oolk/dkU/cP3a5TVcq6fIFl5AtOgXKSJXJ++
	iOzlDywkagMTLFeWzlqjqL92H95BnNF+xo5T5HPIsiIQTuaHct7hCPrTeN6YhhtOhREJq3WriGA
	PyCxvOKk8b4dBmNh3RhbZAvqaMo/iSA4uOuVK2uEvMDclectwzXHSxlJ0RFqFuK5cqRy0nVNSeX
	WJfMZGlRD/ukuNMiOjkAR3zTyrzQRBw2NrZg9iLPFqCf5ANpkMQg==
X-Gm-Gg: AZFdTZc+H5C6AdFBOEua3jgesCOpUkyBK+rPqmk+TPDvx9cL7OP99xt+ottV32KDFGq
	pQQondXMZiJuZX1OJYyHIMTtQcbr2CmVtZr2G9ZZGrQgE0N2DrTx1Fjkah88zTQ5SMB5zuRZTL8
	9qCo5VhXzCtmw7begTD/0Srx4lAQcW6uHv3lRNnRXaJr+/Sz7E6P7t9A6Btw==
X-Received: by 2002:a17:90b:4ad0:b0:3ae:9944:3bf0 with SMTP id 98e67ed59e1d1-3b41c938c77mr19665430a91.34.1795697010843;
        Thu, 26 Nov 2026 04:43:30 -0800 (PST)
X-Received: by 2002:a17:90b:4ad0:b0:3ae:9944:3bf0 with SMTP id
 98e67ed59e1d1-3b41c938c77mr19665406a91.34.1795697010325; Thu, 26 Nov 2026
 04:43:30 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261122-rockchip-pm-defer-v1-1-5b41635e3410@bootlin.com>
In-Reply-To: <20261122-rockchip-pm-defer-v1-1-5b41635e3410@bootlin.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Thu, 26 Nov 2026 13:43:19 +0100
X-Gm-Features: Aa3M54oXEG0UXV0h1Ay8EFT6l0_fiX2X2Hu5kQov4OoBP9nRPaNYuRXl0Vc7i6g
Message-ID: <CAPx+jO8+WAK+W8BVOSJVHoLEvQUUr0-d7gEEK+yNwhJH5skYUw@mail.gmail.com>
Subject: Re: [PATCH] pmdomain: rockchip: fix warning when deferring probe
To: =?UTF-8?Q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Shawn Lin <shawn.lin@rock-chips.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-Proofpoint-GUID: WssuKfr3xaQSc_GrdjMda_nx8tQp2bEq
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA0OSBTYWx0ZWRfX8pAPrmdH/0oW
 5hBf5OsF9TRaxrCoDKVNT5WkjuaVgHQaq+dpoa0sZKhOHE0IQPzKy5OZdMGPjYqs0FdmFYjUecC
 MoKu0Zp2Z+jB/TmA+m4iRnNsQ5iTpo8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA0OSBTYWx0ZWRfX+LWIWL4QlaNt
 oqnNjB4HcWXAYPMRmv7kB85xahYKXsdBw/k+Rijiu3vjI0Q3jGnzeuFG7JpD7hPKN4QKP3WtuTA
 oRttXpmj4eW9qokLo6GqzH/UjHgCk+nTUT0C4uqiCi/CYGW/+BFvC1nSa6m/IUwTZauFXPjIvAI
 Kf1kY3loJyxVqKsjUsBujD9UY/wG4NgljCRMHttxHzpU10/cb/PVrdT9nNwe9f4sLvYfflqlf+/
 YsoXKwEzIgVj8TDnjpKY6JBuYaVRVZPzhLwXJYNYlMSVc7s5DzJMW8uTAePWNmgsXBuqvkLRIE4
 eZpu3r93VxmuNtAZhZ69/WfWStO1ryMvcu6a0EZo5GcuX7V2bCV9iCtZKk84X3Ia9D3+CbXebhx
 e0YkIR7UP4nyH/kZ/9AN4CWYrJ2ofQ+LhViKfZkE7LrrPmF4wyb9687QHjSFf9yfZFq1Udq6+mA
 Jb43QK5EBu5u/om5jMw==
X-Proofpoint-ORIG-GUID: WssuKfr3xaQSc_GrdjMda_nx8tQp2bEq
X-Authority-Analysis: v=2.4 cv=BbxNQbt2 c=1 sm=1 tr=0 ts=6b082973 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=_K5XuSEh1TEqbUxoQ0s3:22 a=P-IC7800AAAA:8 a=cFyDgtjIdI2ehFJVjNoA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_03,2026-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_044332_360930_6BBE6590 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU3VuLCBOb3YgMjIsIDIwMjYgYXQgMjozOOKAr1BNIEFsZXhpcyBMb3Rob3LDqQo8YWxleGlz
LmxvdGhvcmVAYm9vdGxpbi5jb20+IHdyb3RlOgo+Cj4gV2hlbiB0aGUgUE1VIHByb2JlIGZhaWxz
IGJlY2F1c2UgYSBjbG9jayBjYW4ndCBiZSBhY3F1aXJlZCwgdGhlCj4gcG0tZG9tYWlucyBkcml2
ZXIgcmFpc2VzIGEgd2FybmluZyBpbiBrZXJuZWwgbG9nczoKPgo+ICAgWy4uLl0gcG93ZXItZG9t
YWluOiBmYWlsZWQgdG8gZ2V0IGNsayBhdCBpbmRleCAwOiAtNTE3Cj4gICAtLS0tLS0tLS0tLS1b
IGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPiAgIFdBUk5JTkc6IGRyaXZlcnMvY2xrL2Nsay5jOjQ4
MzEgYXQgX19jbGtfcHV0KzB4ZjgvMHgxMzAsIENQVSMwOiBzd2FwcGVyLzAvMQo+ICAgTW9kdWxl
cyBsaW5rZWQgaW46Cj4gICBDUFU6IDAgVUlEOiAwIFBJRDogMSBDb21tOiBzd2FwcGVyLzAgTm90
IHRhaW50ZWQgNy4zLjUtMDAwMDQtZzU1MmQwZDFlMDlmMiAjMTAzIFBSRUVNUFQKPiAgIEhhcmR3
YXJlIG5hbWU6IEZyaWVuZGx5RWxlYyBOYW5vUGkgWmVybzIgKERUKQo+ICAgcHN0YXRlOiAyMDAw
MDAwNSAobnpDdiBkYWlmIC1QQU4gLVVBTyAtVENPIC1ESVQgLVNTQlMgQlRZUEU9LS0pCj4gICBw
YyA6IF9fY2xrX3B1dCsweGY4LzB4MTMwCj4gICBsciA6IGNsa19wdXQrMHgxMC8weDIwCj4gICBz
cCA6IGZmZmY4MDAwODE5MmI3NTAKPiAgIHgyOTogZmZmZjgwMDA4MTkyYjc1MCB4Mjg6IGZmZmY4
MDAwODE0N2FlZTAgeDI3OiBmZmZmODAwMDgxMzQwMGJjCj4gICB4MjY6IDAwMDAwMDAwMDAwMDAw
MDAgeDI1OiBmZmZmODAwMDgwZTVkNWMwIHgyNDogZmZmZjAwMDAwMDc0ZjI4MAo+ICAgeDIzOiBm
ZmZmMDAwMDdmYmU2YmM4IHgyMjogMDAwMDAwMDAwMDAwMDAwMCB4MjE6IDAwMDAwMDAwMDAwMDAw
MDAKPiAgIHgyMDogZmZmZjAwMDAwMDRmNzhiMCB4MTk6IGZmZmZmZmZmZmZmZmZkZmIgeDE4OiAw
MDAwMDAwMDAwMDAwMDA2Cj4gICB4MTc6IDcwMjAzYTcyNjU2YzZjNmYgeDE2OiA3Mjc0NmU2ZjYz
MmQ3MjY1IHgxNTogMDcyMDA3NTIwNzQ1MDc0Ngo+ICAgeDE0OiAwNzQ1MDc0NDA3NWYwNzQ1IHgx
MzogMDcyMDA3NTIwNzQ1MDc0NiB4MTI6IGZmZmY4MDAwODE2ZWU4MzAKPiAgIHgxMTogMDAwMDAw
MDAwMDAwMDA1OCB4MTA6IDAwMDAwMDAwMDAwMDAwMTggeDkgOiBmZmZmODAwMDgxNmVlODMwCj4g
ICB4OCA6IDAwMDAwMDAwMDAwMDAwNWQgeDcgOiAzZmZmZmZmZmZmZmZmMDAwIHg2IDogZmZmZjgw
MDA4MTc0NjgzMAo+ICAgeDUgOiAwMDAwMDAwMDAwMDE3ZmU4IHg0IDogMDAwMDAwMDAwMDAwMDAw
MCB4MyA6IGZmZmYwMDAwMDA0Zjc4YjAKPiAgIHgyIDogMDAwMDAwMDAwMDAwMDAxMCB4MSA6IGZm
ZmYwMDAwMDA0Zjc4YzAgeDAgOiBmZmZmZmZmZmZmZmZmZGZiCj4gICBDYWxsIHRyYWNlOgo+ICAg
IF9fY2xrX3B1dCsweGY4LzB4MTMwIChQKQo+ICAgIGNsa19wdXQrMHgxMC8weDIwCj4gICAgY2xr
X2J1bGtfcHV0KzB4M2MvMHg2MAo+ICAgIHJvY2tjaGlwX3BtX2FkZF9vbmVfZG9tYWluKzB4Mjk4
LzB4NGEwCj4gICAgcm9ja2NoaXBfcG1fZG9tYWluX3Byb2JlKzB4ZDQvMHgzMTAKPiAgICBwbGF0
Zm9ybV9wcm9iZSsweDVjLzB4YjAKPiAgICByZWFsbHlfcHJvYmUrMHhjMC8weDNlMAo+ICAgIF9f
ZHJpdmVyX3Byb2JlX2RldmljZSsweDE2NC8weDFkMAo+ICAgIGRyaXZlcl9wcm9iZV9kZXZpY2Ur
MHhiNC8weDEyMAo+ICAgIF9fZGV2aWNlX2F0dGFjaF9kcml2ZXIrMHhiYy8weDE5MAo+ICAgIGJ1
c19mb3JfZWFjaF9kcnYrMHg4OC8weGYwCj4gICAgX19kZXZpY2VfYXR0YWNoKzB4YTAvMHgxZTAK
PiAgICBkZXZpY2VfaW5pdGlhbF9wcm9iZSsweDUwLzB4NzAKPiAgICBfX2J1c19wcm9iZV9kZXZp
Y2UrMHgzOC8weGIwCj4gICAgYnVzX3Byb2JlX2RldmljZSsweDEwLzB4MjAKPiAgICBkZXZpY2Vf
YWRkKzB4NjA0LzB4ODUwCj4gICAgb2ZfZGV2aWNlX2FkZCsweDQ0LzB4NjAKPiAgICBvZl9wbGF0
Zm9ybV9kZXZpY2VfY3JlYXRlX3BkYXRhKzB4OTQvMHgxNjAKPiAgICBvZl9wbGF0Zm9ybV9idXNf
Y3JlYXRlKzB4MTk4LzB4NTIwCj4gICAgb2ZfcGxhdGZvcm1fYnVzX2NyZWF0ZSsweDFmOC8weDUy
MAo+ICAgIG9mX3BsYXRmb3JtX2J1c19jcmVhdGUrMHgxZjgvMHg1MjAKPiAgICBvZl9wbGF0Zm9y
bV9wb3B1bGF0ZSsweDU4LzB4MTcwCj4gICAgb2ZfcGxhdGZvcm1fZGVmYXVsdF9wb3B1bGF0ZV9p
bml0KzB4ZTgvMHgxMDAKPiAgICBkb19vbmVfaW5pdGNhbGwrMHg2MC8weDFkMAo+ICAgIGtlcm5l
bF9pbml0X2ZyZWVhYmxlKzB4MjA0LzB4Mjg4Cj4gICAga2VybmVsX2luaXQrMHgyYy8weDEzMAo+
ICAgIHJldF9mcm9tX2ZvcmsrMHgxMC8weDIwCj4gICAtLS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAw
MDAwMDAwIF0tLS0KPgo+IFRoZSB3YXJuaW5nIGlzIGR1ZSB0byByb2NrY2hpcF9wbV9hZGRfb25l
X2RvbWFpbiBwYXNzaW5nIHBkLT5udW1fY2xrcyB0bwo+IGNsa19idWxrX3B1dCwgYnV0IHBkLT5u
dW1fY2xrcyBkb2VzIG5vdCByZWZsZWN0IGNvcnJlY3RseSBob3cgbWFueQo+IGNsb2NrcyBhcmUg
Y29ycmVjdGx5IGFjcXVpcmVkIChpdCBpcyBzeXN0ZW1hdGljYWxseSBzZXQgdG8gdGhlIF9rbm93
bl8KPiBudW1iZXIgb2YgY2xvY2tzLCBiZWZvcmUgYXR0ZW1wdGluZyB0byBnZXQgdGhlbSkuCj4K
PiBPbmx5IHBhc3MgdGhlIG51bWJlciBvZiByZXRyaWV2ZWQgY2xvY2tzIHRvIGNsa19idWxrX3B1
dCBieSBzZXR0aW5nCj4gcGQtPm51bV9jbGtzIHRvIHRoZSBudW1iZXIgb2YgY29ycmVjdGx5IHBy
b2Nlc3NlZCBjbG9ja3MuIFRoZSB2YWx1ZSB3aWxsCj4gYmUgZHJvcHBlZCBhbnl3YXkgaW4gY2Fz
ZSBvZiBmYWlsZWQgcHJvYmUuCj4KPiBGaXhlczogZDhiMzg0Nzc3MDY2ICgicG1kb21haW46IHJv
Y2tjaGlwOiBmaXggY2xvY2sgbGVhayBvbiBkb21haW4gcHJvYmUgZmFpbHVyZSIpCj4gU2lnbmVk
LW9mZi1ieTogQWxleGlzIExvdGhvcsOpIDxhbGV4aXMubG90aG9yZUBib290bGluLmNvbT4KCkkg
aGF2ZSBhbHJlYWR5IHF1ZXVlZCBhIHBhdGNoIGZvciB0aGlzIGF0IG15IGZpeGVzIGJyYW5jaDoK
YzY3MTY2MGVhMGFmIHBtZG9tYWluOiByb2NrY2hpcDogT25seSBwdXQgY2xvY2tzIHRoYXQgaGF2
ZSBiZWVuCnN1Y2Nlc3NmdWxseSBvYnRhaW5lZAoKSWYgdGhhdCBpc24ndCBzdWZmaWNpZW50LCBw
bGVhc2UgcmUtc3BpbiB0aGUgJHN1YmplY3QgcGF0Y2guCgpLaW5kIHJlZ2FyZHMKVWZmZQoKPiAt
LS0KPiAgZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgfCAxICsKPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbWRv
bWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3Bt
LWRvbWFpbnMuYwo+IGluZGV4IGUxOTNmOTc4ZDVmMy4uYWRjM2JlYmNkOTI4IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCj4gKysrIGIvZHJpdmVy
cy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiBAQCAtODU0LDYgKzg1NCw3IEBAIHN0
YXRpYyBpbnQgcm9ja2NoaXBfcG1fYWRkX29uZV9kb21haW4oc3RydWN0IHJvY2tjaGlwX3BtdSAq
cG11LAo+ICAgICAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIocG11LT5kZXYsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAiJXBPRm46IGZhaWxlZCB0byBnZXQgY2xrIGF0IGlu
ZGV4ICVkOiAlZFxuIiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5vZGUsIGks
IGVycm9yKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBwZC0+bnVtX2Nsa3MgPSBpOwo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX3B1dF9jbG9ja3M7Cj4gICAgICAgICAgICAg
ICAgIH0KPiAgICAgICAgIH0KPgo+IC0tLQo+IGJhc2UtY29tbWl0OiA5ODgxMTdjYzFiYjE3MzM4
YzU4NmE0ZTIxYWRlODhiNTM5N2VhYzMzCj4gY2hhbmdlLWlkOiAyMDI2MTEyMi1yb2NrY2hpcC1w
bS1kZWZlci1hZGIzMzMxM2YxMTAKPgo+IEJlc3QgcmVnYXJkcywKPiAtLQo+IEFsZXhpcyBMb3Ro
b3LDqSA8YWxleGlzLmxvdGhvcmVAYm9vdGxpbi5jb20+Cj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
