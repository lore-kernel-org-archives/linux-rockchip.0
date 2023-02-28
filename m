Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DB83C64ED6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 17:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Cc:To:From:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ygtdCzjZIjyOJBEW7BAB6tjz5uW37DddUYUpHfbTRwU=; b=MVY98+iydcsaDX5I3wnuU0l5Mr
	h4dFy3e02iEGBLDXbqvTjzxUbycAlW8Tgnd5z+U/36kLnoRtsHQJ5FCn9pmkRHnwQ3j2rpQEUemDf
	2FnAd+/uCNOH5B4vSgaBmyyHuYfAM6AJBYq6TyDRj2nj3aln11ARNdCeY7DDGYyyrBjwoiQ5HaKE0
	7yyJizD2uRrikK52wWKXcTED1lOoBF+eNBpfkpUxCtQEo/L+ISNt2tZKSNRVNyl+QnohM8k7dDkhj
	6ldKu9m3JJmV5yTVdmc5wyYYQRC0UeWQfhf318mYnPAk81lFwlxfl020iC3GVdzu58fIw0Ruu3iKp
	YUiR1oeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX3u4-00DtTV-Lw; Tue, 28 Feb 2023 17:36:40 +0000
Received: from mail-vi1eur04on0623.outbound.protection.outlook.com ([2a01:111:f400:fe0e::623] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX3ts-00DtOD-Ll; Tue, 28 Feb 2023 17:36:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oVwGSzEY12EvjE0/mVTxH6r8SkfRSkzVBpKcan5EAdDe7iuE23TF1X3+7iJ+/rFQkVVcGNze518v4Wu1S3N86oJ9rBbt24vq2H7lZG8yC23b1S6aqZ35kvZYSFVnwgL+wImrbF0/lC8SmtzlMIVqF/5CBy+ThUqKv9dFtVkagGrlzsSMmKoTLiGP4hqm9Oerr8H7sTSWu4UO7L5sib0tvA0Mgnxkor9RbsGdDitoVYpXLoRMgKshN3WjNVBQBneUkjHGJbO1ket6oaA/yyPpYAu6SiDp3pVnBuDckVadxTQqjU7iziSqHBTPx+MwFc9jpBh5PlGPLXzaix/iusNSAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F2GcZLRIpIHnnVmbk+Ujn/9jAU6NI7t04gjOp0uC6XM=;
 b=JhWCGvdmtubNfp4MiBEK3iod4bAWlNaTwYVfEfwJVJoB6zpUUrhNZJk1bQEc93le7zAJ+R/ehsNzxw50nzZgkLpXEY8uaDF1YN6CXTnGq5uDZsky0GkvtxPeeY6o0LSFHXpccP6VxLzvX9fZ0J6pRpiVcaK+88NrccU/8VrgO69Zp7f5edmiugF5L08hHljsIr3u+Dgv8v4t9vf7uicCLCLdGyZIr2DFxwzEvMgeHxnJdpewBLgQUUYocQvYKFEpwBjR4YV/UZtTjwOYMLYczLR+cYJqHhADWt3z9DxTcValtErgjF6RoAHWTROfN+Oe31wwRHhR24lo/vBOYWJPuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F2GcZLRIpIHnnVmbk+Ujn/9jAU6NI7t04gjOp0uC6XM=;
 b=Gr1ZXFI+uoEJr9zEbn1n5ytA9sKOOinQrcg8IwR0EXa6fDTBUm7d984G/A5gc3CePPBd4XZ5pKXvxN+7KxZGsXxygYjgJJgAmFoXPb1JN/sOWgxDTzmQ+/hoRjnFgYY22FvbUXMOiBqnZ/drPf/tS5Ozd8RBsGLEFmIX2iVcdEO2w/jXMRmQs6rAVdifLDRRr9eIBiKF6nA/w1ycKggY/GuOz+4dcCPhMqSCwPNxgVdjXwHxTDfcAJwNYL+TZwP7vWiaROOnwqdda49XUguzVo7S9JzxUmkVqZF29IwiZfv93AOejqMbkIIRxENfnmXEusZsTpzj/AHcZMFZ8PAmoA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by GVXPR04MB9779.eurprd04.prod.outlook.com (2603:10a6:150:111::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.24; Tue, 28 Feb
 2023 17:36:08 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd%6]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 17:36:08 +0000
Message-ID: <956d0ddc-21c6-1074-42fd-67e6d72fb166@theobroma-systems.com>
Date: Tue, 28 Feb 2023 18:36:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: (subset) [PATCH v3 0/9] fix reset line polarity for Goodix
 touchscreen controllers
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
To: Bjorn Andersson <andersson@kernel.org>, samuel@sholland.org,
 agx@sigxcpu.org, megous@megous.com, heiko@sntech.de, hdegoede@redhat.com,
 robh+dt@kernel.org, wens@csie.org, michael.riesch@wolfvision.net,
 lukma@denx.de, icenowy@aosc.io, kernel@pengutronix.de, david@protonic.nl,
 shawnguo@kernel.org, foss+kernel@0leil.net, linux-imx@nxp.com,
 festevam@gmail.com, pgwipeout@gmail.com, jagan@amarulasolutions.com,
 agross@kernel.org, hadess@hadess.net, dmitry.torokhov@gmail.com,
 jernej.skrabec@gmail.com, angelogioacchino.delregno@somainline.org,
 mamlinav@gmail.com, frieder.schrempf@kontron.de, angus@akkea.ca,
 Sascha Hauer <s.hauer@pengutronix.de>, konrad.dybcio@somainline.org,
 krzysztof.kozlowski+dt@linaro.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
 <167336743963.2134489.16668389773212954467.b4-ty@kernel.org>
 <f6a8a8f1-0eec-2716-d4f1-9115c9d156b6@theobroma-systems.com>
In-Reply-To: <f6a8a8f1-0eec-2716-d4f1-9115c9d156b6@theobroma-systems.com>
X-ClientProxiedBy: FR2P281CA0168.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::17) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|GVXPR04MB9779:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ed7304c-584d-4129-b3c3-08db19b24679
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	Tq0uJZw9ujAn930LgFpa2j9otV6GbFNmRpARmLGFl2DYQA0GElxnIrFNyRi0ZClNIvavhmGG6fAOq/zavvQMDhEiQqeUdSpim1ot3BbUpziS1WW1wSR1B/mAdG51kEOn2ZulHmdX0axgFKAxxXB2Dc4eHonz/O6iq5ztGyfxhQW6yVXjkEMKpCWf9AxKLm5cWXyDkBkFyKCEBO5Z6kCZ5ktskUv/WSK/w5L5+xT1uUJNk4NZlsEH8g6R5LYiVnXWNvLxN9qftrXBHKGFeFvDpCHbxbeRo/vcOLu74YzqBIe0jvwpDfF9jiHS8BWHWwntUXfP1RdJuYLr9mVFyBsPgt14kbjlIDGc5pU4KGnAv2arlxHYZvA2Qi/Ub/ASToXmIEn45A7S4isZ9DDuEJkk28Qs948rLqy+RVexwUKWcNwXxsDTXH9Clz0So+YGOTMBi4KCKDQvq3HkKIfG+YNdE8IEBELqGMUJPkBGMRoJtDFQ7qHC1XvjQHfLYLlqSOGeqBPNuDfLV7gGCDChpdQ/G89sC8ATIrtY06wAoiwPJLRO4s2BdtmhVsfxwTV6zDSK07lB1xCC+aKkX95EkceQOi9uGHlqkRYtmhBO5DlVDIJQg7sSi2PU9f9hk3H+7RG4xmWMy2E2Z6kMljQzYn1gQloyWDWRD9utpYeJZ87bZ34v8c3bhG/TWWBiQTZPptPs1t4rZeac9DE6scBwZkPwvrv87t23y9QJ2K0upgos+f+qVnxdY0Hq3ZG6RXT0/pcR
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(366004)(346002)(39850400004)(136003)(376002)(451199018)(31686004)(478600001)(83380400001)(36756003)(110136005)(921005)(316002)(2616005)(31696002)(41300700001)(6486002)(186003)(53546011)(26005)(6512007)(6666004)(6506007)(7416002)(7406005)(5660300002)(44832011)(38100700002)(66946007)(2906002)(66476007)(66556008)(86362001)(8936002)(4326008)(8676002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?VHFDZnRkbFpMVDRFY1NITE5yRTRIQkVZcTFPMS94MlpKRzBxWVhxK09sSkY5?=
 =?utf-8?B?U0JRS0N5UXN2MUMvYVFocE5DZTBVcEkrZllDSnAwWkZzMjI0TkpLc2k0RlNh?=
 =?utf-8?B?czUrdlgzODJCaXhkcEg3Y2owMjgzUmpaSGw3QSsvUzdGc2s5M0dVTWE1V0pZ?=
 =?utf-8?B?ay84UVd6a25MUjRDeHRac3UvRUdmTEltbnZBd2xkUERLY3B0RHBwWkk5SlVU?=
 =?utf-8?B?WjN2RDl2ZDFXa3FQZ09PdTFOOFlpNTFtdzhQekkrUS9kTmU5Vjh3YnQzMStZ?=
 =?utf-8?B?ZURBZEQ5TkorTXVYYm9pemhlV1V6WXEzVkJSbmpHd2xhUEZJRlgwNDM5alNJ?=
 =?utf-8?B?UG05clFoM1plM09URGRzcUFwTW51ZG42YnRjYTliRlcxZ09sYVZ4ZGlFNEZo?=
 =?utf-8?B?T3ZrYXBnWGpSR085NG1xSVYwV1ByNXJGK0pueitXMzBUcXM5YzRCRWRFcS9Y?=
 =?utf-8?B?Tk5VeHpUUEhZaHB5alVNaTZxMjBIYWpISlZCWm40aTF6MFNTbWpHODFFT1VG?=
 =?utf-8?B?czFvblJ1QW9qU0kzRkpjTDdxTEt2NERLNy83TmlPOGFLOERkbzk2UXNFOGpG?=
 =?utf-8?B?YXg5NXlmeWp3dVR0NVgzZUF5NDhvaW5vVzE5UVpLb3FydlZOZjhKbzNzOFNl?=
 =?utf-8?B?dkFydGxHZFAxM1RRcEROSXU4R1NCN2ZJR2x2U2J2MTZLWXUzd29FdE52QzBJ?=
 =?utf-8?B?NE41eGdjM2Y4bnhGSURrazhtU1JlQmJSdU5BM2lBeEh5VUN2NHJwcnFKbTgz?=
 =?utf-8?B?U1pHMzg1Yjgzb1hsMGdWVnlwdTl6TlI1bFBNMVJCZG5EemppeisvSDBMVFZE?=
 =?utf-8?B?c1psd2ZaZjR5U2ZNOHVpbVcwQ2k5K0c0d1VSc01Qei9QUEhia0dLZit2RjZo?=
 =?utf-8?B?Mm9HS2FtVVpCM3dwbHhVZFEwUXdwTkhnRmJKaXhNN0VnbHAyM2huV2lJTytX?=
 =?utf-8?B?cTdmeGhCRUZzWW9vTThidVR1ZWdwOFlhZURzaE95QXBxbUZVRTA2VzhGREd6?=
 =?utf-8?B?YmIrTUlwUDYvdGJQL2JHZnNuWG8xWE4wRTBtcTI1aWNvcGJHWlBLbHZEUmRl?=
 =?utf-8?B?b205WFc2V0Y4TC9sNWdyRXF0WWxFdTVCdkpHTDJuMjFMdmlDOFVrbmFxZGVl?=
 =?utf-8?B?YzlHaFZpTkNRT2VUb3Q5eVU1dmpINEdYK0wwTXF3alJueGh0bm81NnhqRDdI?=
 =?utf-8?B?bU5CbW9CVzdJd250blJzVThxbUNYaVFrb1Z5RXNoQTJSL2o0bHU0d0hTSHVR?=
 =?utf-8?B?OHpCWjNUU1I0NktnbHV6S25WalhVTkZ6VlpUb2ZzQWtyOXFUQlgrbDlEODM1?=
 =?utf-8?B?QjNJZ0pGMVFZRjZ4VkQ3eWpBWW1iU3N2T0hENEFWdWpxaVU1NXVrRmxnZVEx?=
 =?utf-8?B?VTN6a0c4TkhOeG50VXUwQjJ0dGVqMVl4ZGxMdWNWRGJINWpkSDFtYzQ4Qytl?=
 =?utf-8?B?N3FldU4rV21pSTVsMFY4dEp1N3ltKzB3MUZydmVKdXVkazV6d01hWmZBQ3dX?=
 =?utf-8?B?MVh2YmdWRjJ6M243Qk5sOGRQK0pHdzJ5NGpyL0t2Smd6czR5UFNmQ2ZvVlJa?=
 =?utf-8?B?MjN4RFdNK2VsVTJTbGswOFhsMnFzdEs3SmxSSlNxL0R2WjFhQlhXeDcvYVNO?=
 =?utf-8?B?T0M3cXFJQ0VvMWs1YzcvTDFVRFZHNzZLd0RaeUxKQ3h0L3E4dEs1ZDM5ZFlU?=
 =?utf-8?B?WnZSbWxVTDFKZzJSY1Z6dXVkT0FZMEZYa3Y4ZHJxMm5aTVBqaGpDc1pHY2NO?=
 =?utf-8?B?dWFKV2J1NUFSWElXU0Z6cTg5cDhGNEQySC9mVXhJSjF3bGU3V0laNzBMV0du?=
 =?utf-8?B?eGV1NldkUnNvaUJpWFFWYlF3em40ZTVDS2kzRTh5M05WNzRUdWIzSUpDUTdZ?=
 =?utf-8?B?cG9RQmlTV2tSZDhaZUFhLzh0am1qc3pKeUhqbndUT3lndUlrWlYrc3p1ZmJI?=
 =?utf-8?B?WWR0dDFiNUJLVmMrVHdpVURCc095TUUrODNnUWw4aFJDZVRjUkU3RzBha0tW?=
 =?utf-8?B?L1BaSzhjTzYyTmRteEFydVBOUHQ2SjB1SHRLNnNRdnJHbHdydWl5MDFOdDFU?=
 =?utf-8?B?TjVxSkZER0xzbHphREgvWFVDRFlrMGlxckFsTzY5VW9TS3hybTJTQzg1U0or?=
 =?utf-8?B?WlVsRjNnajZJV2F5RDV3OTkwdXQ1OXArSFl0Y2p2Vkt6MCtxUFZFWHF4M3BT?=
 =?utf-8?Q?+ltSumavm5jZpK7vX2uU6jI=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ed7304c-584d-4129-b3c3-08db19b24679
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 17:36:08.3123
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P4YBwvDFr3gXvAaHTtwM4Ap682PZXJ7V3Rhy0lYptcG/PgX3OQ3eDKhX/H3cBcZZnkQtV+aF4Nm9+ZEsOOINbLcKGU7DaQT0Iln3Fvu3vzYZcDJVqbno6Q1BvyEcYFGE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB9779
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_093628_756003_7C22B2CC 
X-CRM114-Status: GOOD (  24.59  )
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

SGkgYWxsLAoKT24gMS8xNi8yMyAxMzozNywgUXVlbnRpbiBTY2h1bHogd3JvdGU6Cj4gSGkgQmpv
cm4sIGFsbCwKPiAKPiBPbiAxLzEwLzIzIDE3OjE3LCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4+
IE9uIE1vbiwgNSBEZWMgMjAyMiAxNDo0MDoyOSArMDEwMCwgUXVlbnRpbiBTY2h1bHogd3JvdGU6
Cj4+PiBGcm9tOiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAdGhlb2Jyb21hLXN5c3Rl
bXMuY29tPgo+Pj4KPj4+IFRoZSBHb29kaXggdG91Y2hzY3JlZW4gY29udHJvbGxlciBoYXMgYSBy
ZXNldCBsaW5lIGFjdGl2ZSBsb3cuIEl0IAo+Pj4gaGFwcGVucyB0bwo+Pj4gYWxzbyBiZSB1c2Vk
IHRvIGNvbmZpZ3VyZSBpdHMgaTJjIGFkZHJlc3MgYXQgcnVudGltZS4gSWYgdGhlIHJlc2V0IAo+
Pj4gbGluZSBpcwo+Pj4gaW5jb3JyZWN0bHkgYXNzZXJ0ZWQsIHRoZSBhZGRyZXNzIHdpbGwgYmUg
d3JvbmdseSBjb25maWd1cmVkLiBUaGlzIAo+Pj4gY29zdCBtZSBhIGZldwo+Pj4gaG91cnMsIHRy
eWluZyB0byBmaWd1cmUgb3V0IHdoeSB0aGUgdG91Y2hzY3JlZW4gd291bGRuJ3Qgd29yay4KPj4+
Cj4+PiBbLi4uXQo+Pgo+PiBBcHBsaWVkLCB0aGFua3MhCj4+Cj4+IFs4LzldIGFybTY0OiBkdHM6
IHFjb206IG1zbTg5OTgtZnh0ZWM6IGZpeCB0b3VjaHNjcmVlbiByZXNldCBHUElPIAo+PiBwb2xh
cml0eQo+PiDCoMKgwqDCoMKgwqAgY29tbWl0OiA4YTA3MjFkYWU2OGZkYjQ1MzRlMjIwZmM5ZmFh
ZTdhMGVmMmYzNzg1Cj4+Cj4gCj4gVGhhbmsgeW91IGZvciB0aGUgbWVyZ2UsIGhvd2V2ZXIgSSB0
aGluayB0aGVyZSBjb3VsZCBiZSBzb21lIGlzc3VlIGhlcmUuCj4gCj4gVGhpcyByZXF1aXJlcyB0
aGUgcGF0Y2hlcyAxLCAyIGFuZCAzIGFsbCBtb2RpZnlpbmcgdGhlIGlucHV0IGRyaXZlciBpbiAK
PiBvcmRlciB0byBub3QgaW50cm9kdWNlIGEgcmVncmVzc2lvbi4KPiAKPiBJIG1pc3Rha2VubHkg
cmVtb3ZlZCB0aGUgUkZDIHRhZyBhbmQgc2VlbWluZ2x5IGRpZG4ndCBtYWtlIGl0IGNsZWFyIAo+
IGVub3VnaCB0aGF0IEkgaGFkIHNvbWUgcXVlc3Rpb24gb24gaG93IHRvIHByb3Blcmx5IG1lcmdl
IHRoaXMgcGF0Y2ggCj4gc2VyaWVzLCBjLmYuICJEbyB3ZSBhbHNvIG1ha2UgdGhpcyBwYXRjaCBz
ZXJpZXMgb25seSBvbmUgcGF0Y2hzZXQgc2luY2UgCj4gdGhlIERUIHBhdGNoZXMgZGVwZW5kCj4g
b24gdGhlIGRyaXZlciBwYXRjaCBhbmQgdmljZS12ZXJzYT8gSW4gd2hpY2ggdHJlZSB3b3VsZCB0
aGlzIGdvPyIgaW4gdGhlIAo+IGNvdmVyIGxldHRlci4KPiAKPiBTbyBwbGVhc2UsIGhvdyBkbyB3
ZSBnbyBvbiB3aXRoIHRoZSByZXN0IG9mIHRoZSBwYXRjaCBzZXJpZXM/IFNob3VsZCBJIAo+IHN1
Ym1pdCBhIHY0IHdoaWNoIHdvdWxkIGJlIG9ubHkgb25lIHBhdGNoIHdpdGggRFQgYW5kIGlucHV0
IGNoYW5nZXMgYWxsIAo+IGF0IG9uY2UgYW5kIEJqb3JuIHJldmVydHMgdGhlIHBhdGNoIHRoZXkg
aGFkIGp1c3QgbWVyZ2VkPwo+IAo+IEBEbWl0cnksIHNpbmNlIHlvdSB3b3VsZCBoYXZlIHRvIG1l
cmdlIGF0IGxlYXN0IHBhdGNoZXMgMSB0byAzIGluIHlvdXIgCj4gdHJlZSAoSSBhc3N1bWUpLCB3
b3VsZCB5b3UgYmUgd2lsbGluZyB0byB0YWtlIHRoZSBEVCBwYXRjaGVzIGF0IHRoZSBzYW1lIAo+
IHRpbWUgdGhyb3VnaCB5b3VyIHRyZWUgdG9vPyBBcmUgdGhlIGFwcHJvcHJpYXRlIGRldmljZSBE
VCBtYWludGFpbmVycyBPSyAKPiB3aXRoIHRoaXM/Cj4gCgpQaW5nLgoKQ2hlZXJzLApRdWVudGlu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
