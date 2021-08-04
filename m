Return-Path: <SRS0=hTL8=M3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F907C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 10:04:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E60AD61004
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 10:04:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E60AD61004
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JCs0yetTHslyjs++lElE9PhkAfvkeGygthRrMUkw7vg=; b=AwYiRh4pnatHtzZ37HTOSjoE9H
	siNs2KJgnUXxWN737jAMZWev5hYNdeOJkpSv5OaQWR5OsFeJ5gp48sw/633ACjffgbe6prQXM966I
	emLQ5iUADBx2RXtE5GdiZKhnU+trVJXTzp6SZM5bTCR5GAdjaKmJzNR/6lU4+0Ma0q0AYdEcYxKa5
	zw2pGntse2/5KJ2ybgO0VHZGEg6eCwZNtPL486cRFM6uv0Dy9OYzmuElXmcC7+L/zu+zYTf4082lp
	+06nCPGzC3Y0P1qKyIYfDF6JO9fjEI131g+OBan3ySLx5QHhoq0Y0CXJ1u6s5LMh1NaXd0F4jHkeA
	QFQjqOOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBDki-005ai3-8e; Wed, 04 Aug 2021 10:03:56 +0000
Received: from mail-he1eur04on0601.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::601]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBDkK-005aUU-Ee; Wed, 04 Aug 2021 10:03:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TcYZaxYKDxO6EQDvlRYGRpLkZumwkMXnvQqfFusEtRchfFRzYWV92BQbCAwsbAbkeSVT0NEKJWasE91Wsg9nj0t0bshTX/AHgz13EncGezCRjwZR3BwYLPyPG2GPX8GlsGKG0ekScRUOsqse9nQyARdTFocXlMNGBJp/vPjoyPUJADR89G3jC2wnA8CuwVKwrsFdKiqnuNH+KLmFcFkBnXJyT7tAk8NgHPpeM86TZXegcYp+Bo6BtX6rIVs0SaMGMgGwO34zhFu9IeIj1rt9LchpOYO45K73ZrsQSg+zO4Izy/ev7b4bmD1EV2MNTLxk7VpaBNRj9l2+TTOd4o81gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m8sqSpoqr1vXJNn3JPGLXjTBqRIoi2ouFNEbkOWcgc8=;
 b=JnFmZcNs9BHVzOVQ6+rSzAL+FfaNt17aK21AUaononVZ+C/0IM0jfxCm+xtkmxWKrX6qvQROplslChqrdn2khH/jzfaXDbdmkS74rVx3qwwOTtdTIjs/5EfnBmZPQsjWcH/S+LxVM5R6zNaecjbI0Oe50oWsoSrfMeSLH0TbODsX/mIR9C628Z8/WNnQCut7BffIJC5uWgGnfK31VNodBJoT21aloZDrBj8RsLf/FwrhlfuW0viP7fnQfCfSQqxazA+IWX2QHJ+D3IzuPn9G7j0c5fktNCbR36RV/qdYCnaK/ggj8AKLwbvxgaZ4k+v8wiGmIInryX+RZHCRZ5h3XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m8sqSpoqr1vXJNn3JPGLXjTBqRIoi2ouFNEbkOWcgc8=;
 b=e3ssH+PFSGQJ12E3sc6IvNRWOx0XDnSH0gBdXGDpaBaJh75xYzS9zcqoC00pPg0G77MvEWS2dm9sEvG0nZnS2qYfMgkup7GH2TIGxeJ/Ys/jvRkBnvdCSSdgxkfbFVLr6oHwyp0x4dg61LGuLM4drCUVCA8FKjpi1lRZjeB4ntg=
Authentication-Results: rock-chips.com; dkim=none (message not signed)
 header.d=none;rock-chips.com; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6537.eurprd08.prod.outlook.com (2603:10a6:10:250::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.19; Wed, 4 Aug
 2021 10:03:27 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4394.016; Wed, 4 Aug 2021
 10:03:27 +0000
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: rk3568-evb1-v10: add node for
 sd card
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Simon Xue <xxm@rock-chips.com>
References: <20210803185309.10013-1-michael.riesch@wolfvision.net>
 <20210803185309.10013-6-michael.riesch@wolfvision.net>
 <2936848.7s5MMGUR32@diego>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <ebddd74f-114f-1da4-8702-387338002551@wolfvision.net>
Date: Wed, 4 Aug 2021 12:03:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <2936848.7s5MMGUR32@diego>
Content-Language: en-US
X-ClientProxiedBy: PR0P264CA0211.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1f::31) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 PR0P264CA0211.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1f::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.15 via Frontend Transport; Wed, 4 Aug 2021 10:03:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6815e54e-a041-4c22-5bcf-08d9572f1a7f
X-MS-TrafficTypeDiagnostic: DB9PR08MB6537:
X-Microsoft-Antispam-PRVS: <DB9PR08MB653789050ABE7F95F0915567F2F19@DB9PR08MB6537.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iy7sIj01VtQcf+6v8WKYrTSZ+sh8Sm0nKNDbFIFuph9mm9LH5Kuyb8sbVafzJ6HsuW+77B1DncZQD6VvNP5l7pUwXGYTjBlJsqas6NmDgYhDLSO0NlWTEnKD+EdoyLqDrakffGx2U4we+parh1z1zAOsTs+Bk8bhte5fRVmLF6uNE5RjfGf/aAsl4IEx5sg35FnAOF6ArvPKsSATA5FICKUKIcjadEnE0mGTryQTFRRaTnF45AguHHUTv311DBsfEc5t/mSdSWs1rPUCHDZ+9vFhnXpU3vD/3z5XRvsn5gVTLcvrRN3p5VxRwdCkh4wdJoS5Cx+eblc3alUJkPh6IXscmhd/bXDOvqY9/aiDM7tBvDi6ev/c8oZNP2DIpsdl0jmDekXNc2EUyQ1Ox1xstdU6Vd7FrfQ2ev930ZI0vUIYbXzNv1kd82mZ8lsZ4YZODBBXRvoSZNhjHDSrVmw8TLbVK4wV8/QgbMb5aL1u54mQHPB00kp2uaKqZIdt7D1YQVRH+d+Ja6y0x+7uGjOnj4fzVvFdH3dueprtj4rrdxH6bSgBKnGgIclKXWgjMKY5V0wN2u+2vIHdgRiqHq9iQOO0b0WVI6s1amopfb3NedYrqgKEpP68xOtnINFn3jjs6gipvGnJguA/fvAd7iVArfb3wgZOwb5jKL2ZFkghkEZV482LjmAAUcS4IBPDwzCqiERlm+INVBGurfHWRpW+wPTSuGFEGOF2v8eehvk6nR+ycnZL5nQVnGFUlyIAg1N0Hm02PSZ5Xu6YFJyjDohjtQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(366004)(39840400004)(396003)(346002)(53546011)(5660300002)(26005)(6486002)(316002)(8676002)(86362001)(478600001)(36756003)(4326008)(956004)(16576012)(38350700002)(38100700002)(31696002)(31686004)(186003)(66476007)(54906003)(44832011)(52116002)(66946007)(8936002)(7416002)(66556008)(2906002)(36916002)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Myt5ZGl3dTJhekNQT1FQYWNJS1RFVFRuaUFEMit4YmNGQ2FGekZQUlBDU3lV?=
 =?utf-8?B?eURJRUplZE13TDJCcDJTTWJPeVREb2I1TzhOajRaUkcvNlNYQ1pvT2Z3Mnl3?=
 =?utf-8?B?YlBzL2p6Q1cvaWcwQmZFczBNWkQxS3Y1ZUxmNmhpVjVCakRibEh5OHNpd0Fm?=
 =?utf-8?B?YldvU2txMTQxUlIveWtsRGNPVElSNUw1c09aRkdjNUVuTHBFYnZLdDRKekRi?=
 =?utf-8?B?MUFjZlVUQS91ZXNZRWtjaVVhQ0J3a3FCMTZlRmt2MEdDMUVIaEQ1eS8yb1d3?=
 =?utf-8?B?YWtTM3ZKYjJNNXVrM3F0N040ckNZYUhDT2tTR081eDVodFlVU2czcDdXcWFm?=
 =?utf-8?B?MHQrTmJsbmVLWEp2VE1kOXQyN2lsTFVnb2IrUHBGYjR5aWUzMlU1VGF1S040?=
 =?utf-8?B?Z2NQTXQzeitjOEo1RXJ4NGNuY3Z3b2hxbGYrVlZ2Myt4eFZLOE9oMDVsZERK?=
 =?utf-8?B?ZUtITmFVUytQMEU4SnNJZWFhRHpSaElTcWlhcXgxU1FGb2lvYWd1Sm1OSUw2?=
 =?utf-8?B?WmllK3Z0QUlYZ09GWXRPVDZwM3hwaGZHMjUvWS9nMEpKK2pEWXdQUkN0RjFY?=
 =?utf-8?B?WnJJNFB6eUgxRVdtZWZJMm5YSlpxcFpYekhYN3pWcXNUTVhUN29qaE9MYWR3?=
 =?utf-8?B?cWNVTVMzV0t3MGk5UjV2ekhhWnhvcWRvOWkyZ0o4QWhuNzZScWpUTDQ2MGFm?=
 =?utf-8?B?WEhVQk5QMS8rYTJaTVB0V05qRXl5THM4L05iZ0dSV2tkSno0ZExqeXVHdy9s?=
 =?utf-8?B?WHpsU0lueUQza1ZIR0xZTUtlWmgwaG4zaG1QTDRJL3d5UHNjMEJTcWI5KzJa?=
 =?utf-8?B?bVJNMU92eEpmWDUvUzZWM29jWUVHSndTdEhQTFZrQzB4OVZYYkhhL1Yxa09O?=
 =?utf-8?B?QjNPUTFHc2p1VTdVZHV3TmNUa1B1WWVIUDlZOXJ6YlhGejVrc1YzVkJKajZ3?=
 =?utf-8?B?RE1jYXZCa2hBNVh5V2grWjd1TVAyMVhVZ1gyNjRrcXpVOUhoTnlrbXdHaUJr?=
 =?utf-8?B?S3FtSUJJcU9GdlJtNGFKSm9rMXJNWFpvVDRtUnVDeVJacXFpTTNPUmlIR3Ax?=
 =?utf-8?B?d0d6YWJwbGR3d0V1Ym0yUFRBcnNlMVRkTlNBVVhqM2RYZTRNREVzOEhRMkRy?=
 =?utf-8?B?emFoVHJDREErZWlHcTJFMStsamNVUXdScFJtdTB2bnN3MlVkeEFYaURMTU55?=
 =?utf-8?B?TEZacVJMWUVLbHB6WlduMVRlQUxEZjRxWVBZRG8zbU9WbFNTNnJVNlBzUmRu?=
 =?utf-8?B?VGJRZ25NcHlxQnZVY1VaQkZEdVpOaVlyU0pKY2h2Zm04VmZiNHM4U1duWVB3?=
 =?utf-8?B?OVJIeW9Wb0JvUGtHaGFaNHJmbklZMkRzN1ZKaWNPWUJ4TnFvN0pGZ0lrcllz?=
 =?utf-8?B?NmJNYlg4YS9BWEsvT3YyeVVoRFFubWtXOG1WOGJoZDhOck5hbFMwTTY0YXlt?=
 =?utf-8?B?TUUvS0pLWEhMOEF4dTI2eUs3Mzl5MCt1cEZacERRbVBVRC84cDRMWVM1Mlc3?=
 =?utf-8?B?bE9acFN3dDl3ejFVSFlBZzM4Nm1VTWhyeXB6akVKSHQ5U1JSRHgyU1VpdWZ2?=
 =?utf-8?B?Z0ZkRDZPbmdsU01uTFI2VmRqd3BoK3lIV05kUUMxUzhGeXFVMm1Kd3d4Z3Bm?=
 =?utf-8?B?em51bXFoUWZ2ZC9DTUwzdXZqYUVKOFNwU3dSNzlsZGZRWEx1czA5dmFwOEk2?=
 =?utf-8?B?WnBCNzlmdWlEYlA3SWFlUlJTMlVZSENsZjdZM1NOWUQ1WjdIK1RtaGlvUVVN?=
 =?utf-8?Q?TP6GEHBD2AB1eMSaUvIQ1utwLHVCUESqDA8vPun?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6815e54e-a041-4c22-5bcf-08d9572f1a7f
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2021 10:03:27.0448 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 368pccXmg4L2UfCPd3yw+SptkTN7hVVPEM5zJS8GMgUCRHo7X0Roem1bsf+OpZ9K7zzlbX+XoneczCz/fSQQRZ/QkVHGxZyb0CWKNe2MnAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6537
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_030332_621939_2A6CDF8B 
X-CRM114-Status: GOOD (  15.77  )
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

SGkgSGVpa28sCgpPbiA4LzMvMjEgMTA6NDggUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFt
IERpZW5zdGFnLCAzLiBBdWd1c3QgMjAyMSwgMjA6NTM6MDkgQ0VTVCBzY2hyaWViIE1pY2hhZWwg
Umllc2NoOgo+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5yaWVzY2hA
d29sZnZpc2lvbi5uZXQ+Cj4+IC0tLQo+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NjgtZXZiMS12MTAuZHRzIHwgMTUgKysrKysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdl
ZCwgMTUgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjgtZXZiMS12MTAuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjgtZXZiMS12MTAuZHRzCj4+IGluZGV4IDNhYzcwYTgxODNjNC4uYjBmNWFhOGM5
NzljIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1l
dmIxLXYxMC5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgt
ZXZiMS12MTAuZHRzCj4+IEBAIC0xNyw2ICsxNyw3IEBACj4+ICAJCWV0aGVybmV0MCA9ICZnbWFj
MDsKPj4gIAkJZXRoZXJuZXQxID0gJmdtYWMxOwo+PiAgCQllbW1jID0gJnNkaGNpOwo+PiArCQlz
ZCA9ICZzZG1tYzA7Cj4gCj4gc2FtZSB0aGluZyBhcyBpbiB0aGUgcHJldmlvdXMgcGF0Y2guCj4g
Cj4gSSBndWVzcyB5b3UgbWF5IHdhbnQgc29tZXRoaW5nIGxpa2UKPiAKPiAJbW1jMCA9ICZzZGhj
aTsKPiAJbW1jMSA9ICZzZG1tYzA7Cj4gCj4gbWF5YmU/CgpUaGFua3MgZm9yIHRoZSBzdWdnZXN0
aW9uLCBJJ2xsIGluY2x1ZGUgaXQgaW4gdGhlIHYyLgoKUmVnYXJkcywgTWljaGFlbAoKPiAKPiAK
PiBIZWlrbwo+IAo+PiAgCX07Cj4+ICAKPj4gIAljaG9zZW46IGNob3NlbiB7Cj4+IEBAIC0zNTMs
NiArMzU0LDIwIEBACj4+ICAJc3RhdHVzID0gIm9rYXkiOwo+PiAgfTsKPj4gIAo+PiArJnNkbW1j
MCB7Cj4+ICsJYnVzLXdpZHRoID0gPDQ+Owo+PiArCWNhcC1zZC1oaWdoc3BlZWQ7Cj4+ICsJY2Qt
Z3Bpb3MgPSA8JmdwaW8wIFJLX1BBNCBHUElPX0FDVElWRV9MT1c+Owo+PiArCWRpc2FibGUtd3A7
Cj4+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKwlwaW5jdHJsLTAgPSA8JnNkbW1j
MF9idXM0ICZzZG1tYzBfY2xrICZzZG1tYzBfY21kICZzZG1tYzBfZGV0PjsKPj4gKwlzZC11aHMt
c2RyMTA0Owo+PiArCXN1cHBvcnRzLXNkOwo+PiArCXZtbWMtc3VwcGx5ID0gPCZ2Y2MzdjNfc2Q+
Owo+PiArCXZxbW1jLXN1cHBseSA9IDwmdmNjaW9fc2Q+Owo+PiArCXN0YXR1cyA9ICJva2F5IjsK
Pj4gK307Cj4+ICsKPj4gICZ1YXJ0MiB7Cj4+ICAJc3RhdHVzID0gIm9rYXkiOwo+PiAgfTsKPj4K
PiAKPiAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
